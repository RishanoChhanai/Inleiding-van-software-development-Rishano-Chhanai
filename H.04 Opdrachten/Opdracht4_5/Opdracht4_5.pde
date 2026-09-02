float a = 3600;
println("dit zijn dus 3600 seconden");
a = a/=60;
println(a);
println("dit is een minuut in seconden");
float b = 60;
b = b/=60;
println(b);
println("dit zijn dus 3600 seconden in uren");
float c = 86.400;

c = c/=a;
println(c);

float d = 31536000;
a = a/=d;
println("dit zijn seconden in jaren");
println(d);
