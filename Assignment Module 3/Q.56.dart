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
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("4 image 1 Text"),),
        body: Center
          (
          child: Column
            (
              children:
              [
                Container( margin: EdgeInsets.only(top: 100),
                  child: Row
                    (mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Image.asset("assets/beach.jpg",height: 140, width: 140,),
                        SizedBox(width: 25,),
                        Image.asset("assets/burger.webp",height: 140, width: 140)
                      ],
                    ),
                ),

                SizedBox(height: 25,),

                Text("ABC",style: TextStyle(fontSize: 18),),

                SizedBox(height: 25,),
                
                Container
                  (margin: EdgeInsets.only(top: 10),
                    child: Row
                      ( mainAxisAlignment: MainAxisAlignment.center,
                        children: 
                        [
                          Image.asset("assets/nature.jpg",height: 140, width: 140),
                          SizedBox(width: 25,),
                          Image.asset("assets/peacock.jpg",height: 140, width: 140)
                        ],
                      ),
                  )
              ],
            ),
        ),
      );
  }
}
