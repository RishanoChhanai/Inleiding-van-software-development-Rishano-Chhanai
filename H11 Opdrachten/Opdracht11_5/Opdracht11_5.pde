String[] NamenLijst = new String[6];

void setup(){
  NamenLijst[0] = "Jan";
  NamenLijst[1] = "Bob";
  NamenLijst[2] = "Samanta";
  NamenLijst[3] = "Hennie";
  NamenLijst[4] = "Jantje";
  NamenLijst[5] = "Karel";
  
  for(int i = 0; i < NamenLijst.length; i++){
    if(NamenLijst[i].equals("Jan")){
      println(NamenLijst[0]); // heb forums gebruikt om de .equals te gebruiken
    }
  }
}
