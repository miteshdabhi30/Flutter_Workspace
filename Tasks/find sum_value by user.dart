import 'dart:io';

import 'package:test/scaffolding.dart';

void main()
{
  print("enter your gujarati marks");
  int gujaratimarks = int.parse(stdin.readLineSync().toString());

  print("enter you Hindi marks");
  int Hindimarks = int.parse(stdin.readLineSync().toString());

  print("enter your English marks");
  int Englishmarks = int.parse(stdin.readLineSync().toString());

  print ("enter your maths marks");
  int mathsmarks = int.parse(stdin.readLineSync().toString());

  print("enter your science marks");
  int sciencemarks = int.parse(stdin.readLineSync().toString());

  int sum = gujaratimarks + Hindimarks + Englishmarks +
   mathsmarks + sciencemarks;

  {
    print(sum);
  }

  double percentage = sum/5;
  {
    print(percentage);
  }




}