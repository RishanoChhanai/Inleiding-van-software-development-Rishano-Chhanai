size(400,400);
background(255,255,255);
noFill();

for(int i = 0; i <10; i++){
for(int j = 0; j <10; j++){
  if((i + j) % 2 == 0){
    fill(0);
  }else{
    fill(255);
  }
  square(20+j*20,20+i*20,20);
}
}
