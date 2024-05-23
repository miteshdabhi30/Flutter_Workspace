import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Myapp(),debugShowCheckedModeBanner: false,));
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
        body: Center
          (
            child: Column
              (
                children:
                [
                  Image.asset("assets/nature.jpg"),
                  SizedBox(height: 20,),

                  Container
                    ( margin: EdgeInsets.only(left: 30,top: 20),
                      child: Row
                        (
                          children:
                          [
                            Column
                              ( crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                          [
                            Text("Oeschinen Forest Campground",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            SizedBox(height: 6,),
                            Text("Abc place, Switzerland",style: TextStyle(fontSize: 14),),
                          ],
                        ),
                          Container
                            (margin: EdgeInsets.only(left: 50),
                              child: Row
                                (
                                  children:
                                  [
                                    Icon(Icons.star,color: Colors.red,),
                                    SizedBox(width: 10,),
                                    Text("4.1",style: TextStyle(fontSize: 16),)
                                  ],
                                ),
                            ),
                          ]
                    )
                  ),

                  Container
                    ( margin: EdgeInsets.only(top: 50),
                      child: Row
                        (
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:
                          [
                            Icon(Icons.call, color: Colors.blue,size: 35,),
                            SizedBox(width: 85,),
                            Icon(Icons.navigation, color: Colors.blue,size: 35,),
                            SizedBox(width: 85,),
                            Icon(Icons.share, color: Colors.blue,size: 35,),
                          ],
                        ),
                    ),

                  Container
                    ( margin: EdgeInsets.only(top: 8,left: 15),
                    child: Row
                      (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Text("Call", style:TextStyle(color: Colors.blue,fontSize: 18),),
                        SizedBox(width: 75,),
                        Text("Route", style:TextStyle(color: Colors.blue,fontSize: 18),),
                        SizedBox(width: 75,),
                        Text("Share", style:TextStyle(color: Colors.blue,fontSize: 18),),
                      ],
                    ),
                  ),
                  
                  Container
                    (margin: EdgeInsets.only(left: 25,top: 35,right: 25),
                      child: Text("A forest is a vast expanse of land covered primarily with trees, vegetation, and various forms of wildlife. Forests are incredibly diverse ecosystems that play crucial roles in maintaining the balance of our planet's environment."))
                ],
              ),
          ),
      );
  }
}
