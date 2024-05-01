import 'dart:io';

void main()
{
  print("Enter any number");
  int num = int.parse(stdin.readLineSync().toString());

  int lastdigit = num%10;



  while(num>10)
    {
      num ~/=10;

    }
  int firstdigit = num;
    int sum = lastdigit + firstdigit;
    print("$sum");
}