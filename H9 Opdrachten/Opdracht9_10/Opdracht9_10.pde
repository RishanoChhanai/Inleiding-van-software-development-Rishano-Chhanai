int bladeren = 300;
int stam = 200;
int tak = 400;

void setup() {
  size(600, 400);
  background(255);
  bos();
}

void bos() {
  tekenBoom(100, bladeren);
  tekenBoom(200, stam);
  tekenBoom(300, tak);
  tekenBoom(400, bladeren);
  tekenBoom(500, stam);
  tekenBoom(600, tak);
}

void tekenBoom(int x, int y) {
  line(x, y, x, y - 150);
  line(x + 100, y - 100, x + 50, y - 150);
  ellipse(x, y - 200, 150, 100);
}
