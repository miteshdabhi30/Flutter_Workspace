import 'dart:io';

void main()
{
  int a = 0, b = 1, next = 0, n;

  print("Enter a positive number:");
  n=int.parse(stdin.readLineSync().toString());

  print("Fibonacci Series:\n$a \n$b");
  next = a + b;

  while (next <= n)
  {
    print("$next");
    a = b;
    a = next;
    next = a + b;
  }
}