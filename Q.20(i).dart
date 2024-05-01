import 'dart:io';
void main()
{
  int i, lastdigit = 0;

  print("Enter any number");
  i=int.parse(stdin.readLineSync().toString());

  while(i>0)
  {
    lastdigit = lastdigit + i%10;

    i=i~/10;
  }
  print("sum of given num is $lastdigit");

}