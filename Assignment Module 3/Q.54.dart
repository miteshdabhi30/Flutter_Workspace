import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Myapp(),));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp>
{
  double fontSize = 25.00;

  void increasefontsize()
  {
    setState(() {
      fontSize += 2.0;
    });
  }

  void
  decreasefotnsize()
  {
    setState(() {
      fontSize -= 2.0;
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Font size Changer"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                  Text("ABC", style: TextStyle(fontSize: fontSize),),

                  SizedBox(height: 10,),

                  Container
                    (
                      child: Row
                        (mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            ElevatedButton(onPressed: (increasefontsize),
                                child: Text("Increase")),

                            SizedBox(width: 20,),

                            ElevatedButton(onPressed: (decreasefotnsize),
                                child: Text("Decrease")),
                          ],
                        ),
                    )
                ],
              ),
          ),
      );
  }
}
