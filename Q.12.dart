import 'dart:io';

void main()
{
  print("Enter Any Number");
  var num = int.parse(stdin.readLineSync().toString());

  if (num % 2 == 0)
  {
    print("Entered number is not prime");
  }
  else {
    print("Entered number is prime");
  }
}