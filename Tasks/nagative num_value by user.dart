import 'dart:io';

void main()
{
  print("enter a number");
  int number = int.parse(stdin.readLineSync().toString());

  if(number>0)
    {
      print("number is positive");
    }
  else if(number==0)
  {
    print("number is zero");
  }

  else
    {
      print("number is nagative");
    }
}