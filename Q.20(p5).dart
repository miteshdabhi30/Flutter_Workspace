//    1
//   21
//  321
// 4321
//54321

import 'dart:io';

void main()
{
  int i,j,k;

  for(i=1; i<=5; i++)
    {
      for(j=4; j>=i; j--)
        {
          stdout.write(" ");
        }
      for(k=i; k>=1; k--)
        {
          stdout.write("$k");
        }
      print("");
    }
}
