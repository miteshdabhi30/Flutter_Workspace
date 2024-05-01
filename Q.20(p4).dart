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
      for(k=1; k<=i; k++)
        {
          stdout.write("*");
        }
      print(" ");
    }
}
