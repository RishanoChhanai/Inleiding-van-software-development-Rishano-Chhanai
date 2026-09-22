int[] GetallenLijst = new int[10];

void setup(){
   GetallenLijst[0] = 9;
   GetallenLijst[1] = 5;
   GetallenLijst[2] = 9;
   GetallenLijst[3] = 3;
   GetallenLijst[4] = 9;
   GetallenLijst[5] = 2;
   GetallenLijst[6] = 5;
   GetallenLijst[7] = 9;
   GetallenLijst[8] = 2;
   GetallenLijst[9] = 9;
   

  int zoeker = 0;
  for(int i = 0; i < GetallenLijst.length; i++){
    if(GetallenLijst[i] == 2){
      zoeker++;
    }
  }
println(zoeker);
}
