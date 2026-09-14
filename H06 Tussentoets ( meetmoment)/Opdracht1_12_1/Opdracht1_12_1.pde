float TotaalAantalLessen = 20;
float GevolgdeLessen = 16;
float Cijfer = 5.5;
float percentageLessenGevolgd = (GevolgdeLessen/TotaalAantalLessen)*100;

if(percentageLessenGevolgd >= 80 && Cijfer >= 5.5){
  println("Geslaagd!");
}else{
  if(percentageLessenGevolgd <= 80 && Cijfer < 5.5){
    println("Gezakt");
  }
}
