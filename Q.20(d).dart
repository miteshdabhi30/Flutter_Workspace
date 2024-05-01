// Write a program you have to find the factorial of given number.

import 'dart:io';

void main()
{
  int i;

  print("Enter Any Number");
  int num = int.parse(stdin.readLineSync().toString());

  int fac=1;
    for(i=1; i<=num; i++)
      {
        fac*=i;
      }
  print("$fac");
}