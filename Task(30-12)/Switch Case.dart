import 'dart:io';

void main()
{
  print("Enter any number");
  int num = int.parse(stdin.readLineSync().toString());

  switch(num)
      {
    case 1 : print("Today is monday");
    case 2 : print("Today is Tuesday");
    case 3 : print("Today is wednesday");
    case 4 : print("Today is thursday");
    case 5 : print("Today is friday");
    case 6 : print("Today is saturday");
    case 7 : print("Today is sunday");
  }
}