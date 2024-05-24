import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Myapp(),));
}

class Myapp extends StatefulWidget
{
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp>
{
  List colors = [Colors.red, Colors.blue, Colors.green, Colors.yellow, Colors.purple];
  Color _backgroundcolor = Colors.white;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Background Color Changer"),),
        body: Container
          (
            height: double.infinity,
            width: double.infinity,
          color: _backgroundcolor,

          child: Column
            (
              children:
              [
                ElevatedButton(onPressed: ()
                    {
                      _changecolor();
                    }, child: Text("Click here"))
              ],
            ),
          ),
      );
  }

  void _changecolor()
  {
    setState(() {
      int randomcolor = Random().nextInt(colors.length);
      _backgroundcolor = colors[randomcolor];

    });
  }
}
