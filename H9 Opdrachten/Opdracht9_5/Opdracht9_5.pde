void setup(){
  String woord = samenwoord("Hallo ", "ik ", "ben ", "Jan ");
  println(woord);
}
String samenwoord(String a, String b, String c, String d){
  String samenwoord = a + b + c + d;
  return samenwoord;
}
