int speler1Score = 30;
int speler2Score = 30;
String Win1 = "Speler 1 heeft gewonnen";
String Win2 = "Speler 2 heeft gewonnen"; 
String Lose = "De ander heeft verloren!";
String Tie = "Het is gelijk spel";

if(speler1Score < speler2Score){
  println(Win2);
}else{
  if(speler2Score < speler1Score){
    println(Win2);
  }
}
if(speler1Score == speler2Score){
  println(Tie);
}
