void setup(){
  persoon myPersoon = new persoon(19, "Jos", "Man");
  myPersoon.toonInformatie();
}

class persoon{
 int leeftijd;
 String naam;
 String geslacht;
 
 persoon(int leeftijd, String naam, String geslacht){
   this.leeftijd = leeftijd;
   this.naam = naam;
   this.geslacht = geslacht;
 }
 
 void toonInformatie(){
   println(leeftijd);
   println(naam);
   println(geslacht);
 }
}
   
 
