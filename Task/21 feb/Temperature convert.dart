import 'dart:io';

void main()
{
  print("Enter Temperature in Celsius");
  double C = double.parse(stdin.readLineSync().toString());

  double F;
    F = (C * (9/5)+32);
    {
      print("Temperature in Fahrenheit is $F");
    }




}