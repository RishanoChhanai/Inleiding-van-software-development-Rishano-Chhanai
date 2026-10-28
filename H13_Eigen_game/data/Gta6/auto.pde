class Auto {
  float autoX;
  float autoY;
  float autoSnelX;
  float autoSnelY;


  Auto(float autoX, float autoY, float autoSnelX, float autoSnelY) {
    this.autoX = autoX;
    this.autoY = autoY;
    this.autoSnelX = autoSnelX;
    this.autoSnelY = autoSnelY;
  }

  void beweeg() {
    autoX = autoX + autoSnelX;
    autoY = autoY + autoSnelY;
  }
  void teken(){
    rect(autoX, autoY, 60,30);
  }
}
