import 'dart:io';

void main()
{
  print("Enter Year");

  int year = int.parse(stdin.readLineSync().toString());

  if(year%4 == 0)
  {
    print("It is a leap year");
  }
  else
  {
    print("Not a leap year");
  }
}

// void main()
// {
//   print("Enter Number of Days of Year");
//   int a = int.parse(stdin.readLineSync().toString());
//
//   if(a==365)
//     {
//       print("Not a Leap year");
//     }
//   else if(a==366)
//     {
//       print("It is a leap year");
//     }
//   else
//     {
//       print("Enter valid numbers of days");
//     }
// }

