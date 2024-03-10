import 'dart:io';

void main()
{
  print("Enter your Gujarati marks");
  int G = int.parse(stdin.readLineSync().toString());

  print("Enter your Hindi marks");
  int H = int.parse(stdin.readLineSync().toString());

  print("Enter your English marks");
  int E = int.parse(stdin.readLineSync().toString());

  print("Enter your Maths marks");
  int M = int.parse(stdin.readLineSync().toString());

  print("Enter your Science marks");
  int S = int.parse(stdin.readLineSync().toString());

  double p; //percentage
  p = (G+H+E+M+S)/5;
  {
    print("Your Percentage is $p");
  }

}