BankAccount myBankAccount;

void setup(){
  size(700, 400);
  myBankAccount = new BankAccount(290, "Customer ID =...", "Eigenaar: Jos", 4124);
}

void keyPressed(){
  myBankAccount.keyPressed();
}

void draw(){
  background(0);
  myBankAccount.LaatZien();
}

class BankAccount{
  float Geld;
  String Attributen;
  String Eigenaar;
  int RekeningNummer;

  BankAccount(float Geld, String Attributen, String Eigenaar, int RekeningNummer){
    this.Geld = Geld;
    this.Attributen = Attributen;
    this.Eigenaar = Eigenaar;
    this.RekeningNummer = RekeningNummer;
  }

  void keyPressed(){
    if(key == 'a'){
      Geld = Geld - 50;
    }
    if(key == 'd'){
      Geld = Geld + 50;
    }
  }

  void LaatZien(){
    textAlign(CENTER);
    textSize(20);
    text("Druk op A om geld op te halen en D om geld te storten", width/2, height - 15);
    textAlign(CENTER);
    textSize(30);
    text("De RekeningNummer is " + RekeningNummer, width/2, height - 100);
    textSize(50);
    text(Eigenaar, width/2, height - 150);
    textSize(25);
    text(Attributen, width/2, height - 50);
    if(Geld >= 0){
      textSize(50);
      fill(0,255,0);
      text("€" + Geld, width/2, height/2);
    }else{
      textSize(50);
      fill(255,0,0);
      text("Onvoldoende saldo", width/2, height/2);
    }
  }
}
