import 'dart:io';

void main()
{
  print("enter total number of day");
  int num = int.parse(stdin.readLineSync().toString());

  if(num==365)
    {
      print("it's not a leap year");
    }

  else
    {
      print("it'a a leap year");
    }
}