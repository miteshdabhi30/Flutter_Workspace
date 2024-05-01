import 'dart:io';

void main()
{
  int max;

  print("Enter First Number");
  int A = int.parse(stdin.readLineSync().toString());

  print("Enter Second Number");
  int B = int.parse(stdin.readLineSync().toString());

  print("Enter Third Number");
  int C = int.parse(stdin.readLineSync().toString());



  max=(A>=B && A>=C) ? A: (B>=A && B>=C)? B:C;

  print("Maximum number is $max");
}


