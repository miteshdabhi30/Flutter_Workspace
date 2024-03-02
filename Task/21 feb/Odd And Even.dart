import 'dart:io';
void main ()
{
  print("Enter Any Number");
  int Num = int.parse(stdin.readLineSync().toString());

double mod = Num%2;

  if(mod==0)
    {
      print("The Number is Even");
    }
  else
    {
      print("The Number is ODD");
    }

}