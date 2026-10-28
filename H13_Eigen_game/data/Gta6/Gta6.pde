float playerX = 350;
float playerY = 400;
float snelheidX;
float snelheidY;
boolean links, rechts, omhoog, omlaag, focus, inAuto;
Auto mijnAuto;

void setup() {
  size(700, 500);
  mijnAuto = new Auto(350, 350, 0, 0);
}

void draw() {
  background(0);
  mijnAuto.beweeg();
  mijnAuto.teken();
  float focusSnel = 5;
  if (focus) {
    focusSnel = 3.5;
  }

  snelheidX = 0;
  snelheidY = 0;
  if (links == true) snelheidX = snelheidX - focusSnel;
  if (rechts == true) snelheidX = snelheidX + focusSnel;
  if (omhoog == true) snelheidY = snelheidY - focusSnel;
  if (omlaag == true) snelheidY = snelheidY + focusSnel;

  playerX = playerX + snelheidX;
  playerY = playerY + snelheidY;
  playerX = constrain(playerX, 0, width - 30);
  playerY = constrain(playerY, 200, height - 30);

  if (!inAuto) {
    fill(255);
    rect(playerX, playerY, 30, 30);
    fill(0, 255, 0);
    ellipse(playerX + 15, playerY + 15, 10, 10);
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A') links = true;
  if (key == 'd' || key == 'D') rechts = true;
  if (key == 's' || key == 'S') omlaag = true;
  if (key == 'w' || key == 'W') omhoog = true;
  if (keyCode == SHIFT) focus = true;

  if (key == 'e' || key == 'E') {
    if (dist(playerX, playerY, mijnAuto.autoX, mijnAuto.autoY) < 60) {
      inAuto = true;
    }
  }
}

void keyReleased() {
  if (key == 'a' || key == 'A') links = false;
  if (key == 'd' || key == 'D') rechts = false;
  if (key == 's' || key == 'S') omlaag = false;
  if (key == 'w' || key == 'W') omhoog = false;
  if (keyCode == SHIFT) focus = false;
}
