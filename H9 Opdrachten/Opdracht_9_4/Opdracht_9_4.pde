void setup() {
  size(600, 400);
  background(255, 255, 255);
  
  vierkant(100, 100, 200, 200);
}

void vierkant(float x, float y, float breedte, float hoogte) {
  line(x, y, x + breedte, y);
  line(x + breedte, y, x + breedte, y + hoogte);
  line(x + breedte, y + hoogte, x, y + hoogte);
  line(x, y + hoogte, x, y);
}
