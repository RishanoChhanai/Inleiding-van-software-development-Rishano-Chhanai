size(200, 200);
background(255);
noFill();

int sizeC = 10;

for (int i = 0; i < 50; i++) {
  ellipse(200, 100, sizeC, sizeC);
  println(sizeC);
  sizeC += 10;
}
