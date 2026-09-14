size(200, 200);
background(255, 255, 255);

noFill();

int sizeC = 10;

for (int i = 0; i < 5; i++) {
  ellipse(100, 100, sizeC, sizeC);
  println(sizeC);
  sizeC += 10;
}
