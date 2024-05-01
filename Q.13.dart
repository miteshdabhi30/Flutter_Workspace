import 'dart:io';

void main()
{
  print("Enter First Number");
  int A = int.parse(stdin.readLineSync().toString());

  print("Enter Second Number");
  int B = int.parse(stdin.readLineSync().toString());

  print("Enter Third Number");
  int C = int.parse(stdin.readLineSync().toString());

  if(A>=B && A>=C) {
    print("$A is max number");
  }

    else if (B >= A && B >= C)
    {
      print("$B is max number");
    }
      else
      {
        print("$C is max number");
      }

    }


