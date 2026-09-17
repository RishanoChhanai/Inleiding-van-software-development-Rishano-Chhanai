void setup(){
  size(600, 400);
  background(255,255,255);
  
  tekenBoom();
}

  
void tekenBoom(){
int bladeren = 300;
int Boomstam = 300;
int tak = 400;

line(Boomstam, 350, 300, 200);
line(tak, 250, 350, 200);
ellipse(bladeren, 150,150,100);
}
