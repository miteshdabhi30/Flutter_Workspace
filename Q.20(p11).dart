// 1
// 0 1
// 1 0 1
// 0 1 0 1
// 1 0 1 0 1
import 'dart:io';

void main() {
  int i,j;

  for (i = 1; i <= 5; i++)
      {

    for (j=1; j<=i; j++)
        {
          stdout.write("");
        }

    for (j = 1; j <= i; j++)
        {
      if ((i + j) % 2 == 0)
      {
        stdout.write("1 ");
      } else
      {
        stdout.write("0 ");
      }
    }

    print("");
  }
}
