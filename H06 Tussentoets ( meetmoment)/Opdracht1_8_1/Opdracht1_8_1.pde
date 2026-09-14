int temperatuurCelsius = 31;

if(temperatuurCelsius >= 25 && temperatuurCelsius < 30){
  println("warm");
}else{
  if(temperatuurCelsius >= 30){
  print("heet");
}
}

switch(temperatuurCelsius){
  case 31:
  println("Het is nu 31 Graden");
  break;
  default:
  println("het is nu 10 Graden");
  break;
}
