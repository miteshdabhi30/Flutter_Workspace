import 'dart:io';

void main()
{
  var X;

  print("Enter Any One \n Add \n Sub \n Mul \n Div ");
  X = stdin.readLineSync().toString();

  print("Enter First Number");
  int f = int.parse(stdin.readLineSync().toString());

  print('Enter Second Number');
  int s = int.parse(stdin.readLineSync().toString());

  int Add = f+s;
  int Sub = f-s;
  int Mul = f*s;
  double Div = f/s;

  switch(X)
      {
    case 'Add':
        print("$f + $s = $Add");

    case 'Sub':
      print("$f - $s = $Sub");

    case 'Mul':
      print("$f * $s = $Mul");

    case 'Div':
      print("$f / $s = $Div");
  }

}