import 'dart:io';

void main()
{
  int a,b,c,d,e;

  print("Enter marks of a");
  a = int.parse(stdin.readLineSync().toString());

  print("Enter marks of b");
  b = int.parse(stdin.readLineSync().toString());

  print("Enter marks of c");
  c = int.parse(stdin.readLineSync().toString());

  print("Enter marks of d");
  d = int.parse(stdin.readLineSync().toString());

  print("Enter marks of e");
  e = int.parse(stdin.readLineSync().toString());


  double P = (a+b+c+d+e)/5;

  if(P>75)
    {
      print("Distintion & Your Percetage is $P");
    }
  else if(P>60)
    {
      print("First Class & Your Percetage is $P");
    }
  else if(P>50)
    {
      print("Second Class & Your Percetage is $P");
    }
  else if(P>50)
    {
      print("Scond Class & Your Percetage is $P");
    }
  else if(P>35)
    {
      print("pass class & Your Percetage is $P");
    }
  else
    {
      print("fail & Your Percetage is $P");
    }
}