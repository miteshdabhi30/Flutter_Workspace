import 'dart:io';
void main()
{
   int reverse=0, remainder;
  int n;
  print("Enter a positive number:");
  n=int.parse(stdin.readLineSync().toString());

  while (n > 0)
  {
    remainder = n % 10;
    reverse = (reverse * 10) + remainder;
    n~/=10;
  }
  print("Reversed Number: $reverse");
}
