//1
//2 3
//4 5 6
//7 8 9 10
//11 12 13 14 15

import 'dart:io';

void main()
{
  int i,j;
  int a=1;

  for(i=1; i<=5; i++)
    {
      for(j=1; j<=i; j++)
        {
          stdout.write("$a ");
          a++;
        }
      print("");

    }
}