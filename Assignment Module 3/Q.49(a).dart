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
        appBar: AppBar(title: Text('Colorful Screen',style: TextStyle(color: Colors.white),),backgroundColor: Colors.black,),
        body: SingleChildScrollView
          (

            child: Column
              (
                children:
                [
                  SizedBox(height: 0,),
                  
                  Container(margin: EdgeInsets.only(top: 10),
                    height: 200, width: 500, color: Colors.red,),

                  SizedBox(height: 10,),

                  Container(
                    height: 200,
                    width: 500,
                    padding: EdgeInsets.all(0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: [
                        Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(5),
                        ),
                        Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(5),
                        ),
                        Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(5),
                        ),
                        Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(5),
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 0,),
                  
                  Container(
                    margin: EdgeInsets.all(0),
                    height: 100, width: 400,
                  child: GridView.count(crossAxisCount: 3,
                  children:
                  [
                    Container
                      ( margin: EdgeInsets.all(5),
                        color: Colors.yellow,
                      ),

                    Container
                      ( margin: EdgeInsets.all(5),
                      color: Colors.yellow,
                    ),

                    Container
                      ( margin: EdgeInsets.all(5),
                      color: Colors.yellow,
                    ),

                    Container
                      ( margin: EdgeInsets.all(5),
                      color: Colors.yellow,
                    ),

                    Container
                      ( margin: EdgeInsets.all(5),
                      color: Colors.yellow,
                    ),

                    Container
                      ( margin: EdgeInsets.all(5),
                      color: Colors.yellow,
                    )
                  ],),)

                ],
              ),
          ),
      );
  }
}
