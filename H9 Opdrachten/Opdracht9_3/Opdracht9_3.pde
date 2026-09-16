int mijnGetal;

void setup(){
  mijnGetal = mijnMethode(2, 1, 9);
  println(mijnGetal);
}

void draw(){
  
}

int mijnMethode(int getal, int getaltwee, int getaldrie){
  int totaal = (getal + getaltwee + getaldrie)/3;
  return totaal;
}
