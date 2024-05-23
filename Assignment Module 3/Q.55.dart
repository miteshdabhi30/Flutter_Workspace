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
  bool _ischecked = false;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Textview Display"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                  Checkbox(value: _ischecked,
                      onChanged: (value)
                  {
                    setState(() {
                      _ischecked = value!;
                    });
                  }),

                  if(_ischecked == true)
                    Text("Text is displayed",style: TextStyle(fontSize: 20),)
                ],
              ),
          ),
      );
  }
}
