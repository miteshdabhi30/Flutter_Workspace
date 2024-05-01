//Write a program to find out the max from given number (E.g. No: -1562
// Max number is 6

import 'dart:io';

void main() {
  int num,
      remainder,
      max = 0;

  print("Enter any number");
  num = int.parse(stdin.readLineSync().toString());

  while (num > 0)
  {
    remainder = num % 10;

    if (remainder > max) {
      remainder = num % 10;
      max = remainder;
    }
    else {
      num = num ~/ 10;
    }


  }
  print("Max number is $max");
}