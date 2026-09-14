int a = 0;
int b = 1;

for(int i = 0; i < 10; i++){
  println(a);
  
  int volgende = a + b;
  a = b;
  b = volgende ;
}
