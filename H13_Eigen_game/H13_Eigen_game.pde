import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
int geld = 10;
Minim minim;
AudioPlayer player;
int moeilijkheid = 0;
float playerX = 350;
float playerY = 400;
float snelheidX;
float snelheidY;
float bossX = 350;
float bossY = 100;
int HP = 100;
boolean BossMoveX = false;
boolean BossMoveY = false;
boolean links, rechts, omhoog, omlaag, focus, start;
boolean Restart = false;
int fase;
int Score;
int volgende;
Kogel[] kogels = new Kogel[500];
PImage EDP;
PImage EDP2;
PImage GameOverScreen;

void setup() {
  size(700, 500);
  EDP = loadImage("EDP.png");
  EDP2 = loadImage("EDP2.png");
  minim = new Minim(this);
  player = minim.loadFile("Kirby.mp3");
  player.loop();
  fase = 0;
}

void draw() {
  if (fase == 0) {
    player.rewind();
    background(0);
    textAlign(CENTER);
    textSize(25);
    fill(255);
    text("DRUK OP ENTER OM TE BEGINNEN!!!! \n Druk op W,A,S,D om te bewegen en linker SHIFT voor focus. \n De witte vierkant ben jij en de groene puntje is jouw hitbox. \n Ontwijk de Rode en blauwe balletjes. \n links boven in de hoekje is je hp. \n druk op 3 voor makkelijk, 2 voor medium en 1 voor moeilijk.", width/2, height/2);
    if (keyCode == ENTER || keyCode == RETURN) {
      BossMoveX = true;
      fase = 1;
    }
  }
  if (fase == 1) {
    float focusSnel = 5;
    if (focus) {
      focusSnel = 3.5;
    }
    background(0);
    textAlign(LEFT, TOP);
    fill(255);
    textSize(25);
    text(HP, 100, 50);

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
    fill(255);
    rect(playerX, playerY, 30, 30);
    fill(255, 0, 0);
    if (Score > 500) {
      image(EDP2, bossX, bossY, 60, 60);
    } else {
      image(EDP, bossX, bossY, 60, 60);
    }


    fill(0, 255, 0);
    ellipse(playerX + 15, playerY + 15, 10, 10);


    if (frameCount % 20 == 0) {
      Score = Score + 1;
    }
    textAlign(TOP);
    textSize(30);
    fill(255);
    text("Score" + " " + Score, 575, 70);

    if (BossMoveX == true) {
      bossX = bossX + 3;
      if (bossX >= 650) {
        BossMoveX = false;
      }
    } else {
      bossX = bossX - 3;
      if (bossX <= 10) {
        BossMoveX = true;
      }
    }

    if (BossMoveY == true) {
      bossY = bossY + 5;
      if (bossY >= 200) {
        BossMoveY = false;
      }
    } else {
      bossY = bossY - 5;
      if (bossY <= 30) {
        BossMoveY = true;
      }
    }


    if (frameCount % 20 == 0) {
      kogels[volgende] = new Kogel(bossX, bossY, 0, 2);
      volgende = (volgende + 1) % kogels.length;
    }


    for (int i = 0; i < kogels.length; i++) {
      if (kogels[i] != null && kogels[i].homing == false) {
        kogels[i].beweeg();
        kogels[i].teken();

        if (kogels[i].kogelX > playerX + 5 && kogels[i].kogelX < playerX + 25 && kogels[i].kogelY > playerY + 5 && kogels[i].kogelY < playerY + 25) {
          HP = HP - 10;
          kogels[i] = null;
        }
      }
    }


    if (Score >= moeilijkheid && frameCount % 30 == 0) {
      kogels[volgende] = new Kogel(width * int(random(2)), random(height), 0, 0);
      kogels[volgende].homing = true;
      volgende = (volgende + 1) % kogels.length;
    }


    for (int i = 0; i < kogels.length; i++) {
      if (kogels[i] != null && kogels[i].homing == true) {
        kogels[i].beweeg();
        kogels[i].teken();

        if (kogels[i].kogelX > playerX + 5 && kogels[i].kogelX < playerX + 25 && kogels[i].kogelY > playerY + 5 && kogels[i].kogelY < playerY + 25) {
          HP = HP - 10;
          kogels[i] = null;
        }
        if (kogels[i] != null && kogels[i].leven > 150) {
          kogels[i] = null;
        }
      }
    }

    if (HP <= 0) {
      player.pause();
      player.rewind();
      fase = 2;
    }
  }
  if (fase == 2) {
    background(0);
    textSize(30);
    textAlign(CENTER);
    text("GAME OVER. Druk op R om opnieuw te beginnen. \n Score: " + Score, width/2, height/2);
  }
  if (fase == 2 && key == 'r' || fase == 2 && key == 'R') {
    player.loop();
    fase = 0;
    HP = 100;
    playerX = 350;
    playerY = 400;
    bossX = 350;
    bossY = 100;
    kogels = new Kogel[500];
    volgende = 0;
    Score = 0;
    moeilijkheid = 0;
  }
}





void keyPressed() {
  if (key == 'a' || key == 'A') links = true;
  if (key == 'd' || key == 'D') rechts = true;
  if (key == 's' || key == 'S') omlaag = true;
  if (key == 'w' || key == 'W') omhoog = true;
  if (fase == 0 && key == '1') moeilijkheid = 10;
  if( fase == 0 && key == '2') moeilijkheid = 50;
  if( fase == 0 && key == '3') moeilijkheid = 150;
  if (keyCode == SHIFT) focus = true;
  if (keyCode == ENTER) start = true;
}

void keyReleased() {
  if (key == 'a' || key =='A') links = false;
  if (key == 'd' || key =='D') rechts = false;
  if (key == 's' || key == 'S') omlaag = false;
  if (key == 'w' || key == 'W') omhoog = false;
  if (keyCode == SHIFT) focus = false;
}
