void setup(){
  background(0);
  size(400,400);
  Rectangle myRectangle = new Rectangle(200,200,100,50);
  myRectangle.display();
}

class Rectangle {
  float x;
  float y;
  float breedte;
  float hoogte;
 
  Rectangle(float x, float y, float breedte, float hoogte){
    this.x = x;
    this.y = y;
    this.breedte = breedte;
    this.hoogte = hoogte;
  }
  
  void display(){
    rect(x, y, breedte, hoogte);
  }
  
}
