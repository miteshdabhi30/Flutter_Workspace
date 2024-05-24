import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: RGBslider(),));
}

class RGBslider extends StatefulWidget
{
  const RGBslider({super.key});

  @override
  State<RGBslider> createState() => _RGBsliderState();
}

class _RGBsliderState extends State<RGBslider>
{
  double redvalue = 0;
  double greenvalue = 0;
  double bluevalue = 0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Container
          (color: Color.fromRGBO
              (redvalue.toInt(),
                greenvalue.toInt(),
                bluevalue.toInt(), 
                1),
           height: double.infinity,
            width: double.infinity,


            child: Column
              (mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Text("Red: ${redvalue.toInt()}", style: TextStyle(color: Colors.red),),
                  Slider(value: redvalue,
                      min:0, max:255,
                      onChanged: (value)
                  {
                    setState(() {
                      redvalue = value;
                    });
                  },
                  activeColor: Colors.red,
                  inactiveColor: Colors.red,),
                  
                  Text("Green: ${greenvalue.toInt()}",style: TextStyle(color: Colors.green),),
                  Slider(value: greenvalue,
                      min:0,
                      max:255,
                      onChanged: (value)
                  {
                    setState(() {
                      greenvalue = value;
                    });
                  },
                  activeColor: Colors.green,
                  inactiveColor: Colors.green,),

                  Text("Blue: ${bluevalue.toInt()}",style: TextStyle(color: Colors.blue),),

                  Slider(value: bluevalue,
                      min:0,
                      max:255,
                      onChanged: (value)
                  {
                    setState(() {
                      bluevalue = value;
                    });
                  },activeColor: Colors.blue, inactiveColor: Colors.blue,)
                ],
              ),
          ),
      );
  }
}
