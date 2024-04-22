import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  TextEditingController Firstname = TextEditingController();
  TextEditingController Lastname = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  bool Music = false;
  bool Reading = false;
  bool Games = false;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (
            child: Container
              (
                margin: EdgeInsets.only(top: 60),
                child: Column
                  (
                    children:
                    [
                      Text("Sign up",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

                      SizedBox(height: 12,),

                      Text("Creat your account",style: TextStyle(fontSize: 16,),),

                      SizedBox(height: 20,),

                      Container
                        (
                          margin: EdgeInsets.only(left: 40,right: 40),


                        child: TextFormField
                          (
                            controller: Firstname,
                            decoration: InputDecoration(hintText: 'Firstname',labelText: 'Firstname',
                                fillColor: Colors.purple.shade50,
                                filled: true,
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)),
                            validator: (value)
                          {
                              if(value!.isEmpty)
                                {
                                  return 'Please Enter Firstname';
                                }
                              else
                                {
                                  return null;
                                }
                          },
                          ),
                      ),

                      // Last name form field

                      SizedBox(height: 20,),

                      Container
                        (
                        margin: EdgeInsets.only(left: 40,right: 40),


                        child: TextFormField
                          (
                          controller: Lastname,
                          decoration: InputDecoration(hintText: 'Lastname',labelText: 'Lastname',
                              fillColor: Colors.purple.shade50,
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return 'Please Enter Lastname';
                            }
                            else
                            {
                              return null;
                            }
                          },
                        ),
                      ),

                      // Email form field

                      SizedBox(height: 20,),

                      Container
                        (
                        margin: EdgeInsets.only(left: 40,right: 40),


                        child: TextFormField
                          (
                          controller: Email,
                          decoration: InputDecoration(hintText: 'Enter Email',labelText: 'Email',
                              fillColor: Colors.purple.shade50,
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return 'Please Enter Email';
                            }
                            else
                            {
                              return null;
                            }
                          },
                        ),
                      ),

                      // Password Form Field

                      SizedBox(height: 20,),

                      Container
                        (
                        margin: EdgeInsets.only(left: 40,right: 40),


                        child: TextFormField
                          (
                          controller: Password,
                          decoration: InputDecoration(hintText: 'Password',labelText: 'Password',
                              fillColor: Colors.purple.shade50,
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return 'Please Enter Password';
                            }
                            else
                            {
                              return null;
                            }
                          },
                        ),
                      ),

                      SizedBox(height: 20,),

                      Container
                        (
                        margin: EdgeInsets.only(left: 40,right: 40),


                        child: TextFormField
                          (
                          controller: Password,
                          decoration: InputDecoration(hintText: 'Confirm Password',labelText: 'Password',
                              fillColor: Colors.purple.shade50,
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return 'Please Enter Confirm Password';
                            }
                            else
                            {
                              return null;
                            }
                          },
                        ),
                      ),

                      SizedBox(height: 20,),

                                Row
                                  (
                                  children: [
                                    Expanded
                                      (child: CheckboxListTile

                                  (
                                    title: Text("Music"),
                                    value: Music,
                                    onChanged:  (value)
                                    {
                                      setState(()
                                      {
                                        Music = value!;
                                      });
                                    }
                                    ),
                                    ),


                                    Expanded
                                      (child: CheckboxListTile
                                    (
                                      title: Text("Games"),
                                      value: Games,
                                      onChanged:  (value)
                                      {
                                        setState(()
                                        {
                                          Games = value!;
                                        });
                                      }

                                      ),
                                    ),

                                    Expanded
                                      (child: CheckboxListTile
                                    (
                                      title: Text("Reading"),
                                      value: Reading,
                                      onChanged:  (value)
                                      {
                                        setState(()
                                        {

                                          Reading = value!;
                                        });
                                      }
                                      ),
                                    )
                              ],
                                ),

                    ]





                  ),
              ),

      ),
    );
  }
}
