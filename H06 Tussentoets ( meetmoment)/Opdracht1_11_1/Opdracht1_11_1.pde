int steen1 = 6;
int steen2 = 6;
int steen3 = 6;
int resultaat = 0;

if(steen1 == 1 && steen2 == 1 && steen3 == 1){
  println("Critical Miss!");
}else{
  if(steen1 == 6 && steen2 == 6 && steen3 == 6){
    println("Gefeliciteerd je bent een bofkont!");
  }
}

if(steen1 == 1 || steen2 ==1 || steen3 == 1){
  println("Mis!");
}else{
resultaat = steen1 + steen2 + steen3;
println(resultaat +" "+ "HIT!");
}
