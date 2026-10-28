class Kogel {
  float kogelX;
  float kogelY;
  float kogelSnelX;
  float kogelSnelY;
  boolean homing = false;
  int leven = 0;

  Kogel(float x, float y, float snelX, float snelY) {
    kogelX = x;
    kogelY = y;
    kogelSnelX = snelX;
    kogelSnelY = snelY;
  }

  void beweeg() {
    leven = leven + 1;
    if (homing) {
      kogelSnelX = (playerX + 15 - kogelX) / dist(kogelX, kogelY, playerX + 15, playerY + 15) * 3;
      kogelSnelY = (playerY + 15 - kogelY) / dist(kogelX, kogelY, playerX + 15, playerY + 15) * 3;
    }
    kogelX = kogelX + kogelSnelX;
    kogelY = kogelY + kogelSnelY;
  }

  void teken() {
    if (homing == true) {
      fill(0, 0, 255);
      ellipse(kogelX, kogelY, 10, 10);
    } else {
      fill(255, 0, 0);
      ellipse(kogelX, kogelY, 10, 10);
    }
  }
}
