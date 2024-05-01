import 'dart:io';

void main()
{

  print("Select any one number");
  print("1 for Triangle");
  print("2 for Rectangle");
  print("3 for Circle");

  int num = int.parse(stdin.readLineSync().toString());

  if(num ==1)
  {
    print("Enter Base of triangle");
    int b = int.parse(stdin.readLineSync().toString());

    print("Enter Height of Triangle");
    int h = int.parse(stdin.readLineSync().toString());

    var tarea = 0.5*b*h;

    print("Area of Triangle is $tarea");
  }

  else if(num ==2)
    {
      print("Enter length of rectangle");
      int l = int.parse(stdin.readLineSync().toString());

      print("Enter width of rectangle");
      int w = int.parse(stdin.readLineSync().toString());

      var rarea = l*w;

      print("Area of Rectangle is $rarea");
    }
  else
    {
      print("Enter Radius of circle");
      int r = int.parse(stdin.readLineSync().toString());

      var pie = 3.14;

      var areac = pie*r*r;
      print("Area of Circle is $areac");
    }
}