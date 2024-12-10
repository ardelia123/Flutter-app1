import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
             height: 150,
             decoration: BoxDecoration(
              color: Color.fromARGB(255, 136, 138, 61),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
              boxShadow: [
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          offset: new Offset(-8.0, 12.0),
                          blurRadius: 9.0,
                          spreadRadius: 2.0),
                        ],
            ),
            child: Stack(
            children: [
              Positioned(
                top:40,
                left: 0,
                child: Container(
                  height: 80,
                  width: 270,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                          BoxShadow(
                          color: Color.fromARGB(255, 237, 227, 131).withOpacity(0.5),
                          offset: new Offset(10.0, 10.0),
                          blurRadius: 3.0,
                          spreadRadius: 1.0),
                        ],
                  ),
                )
              ),
              Positioned(
                top: 60,
                left: 40,
                child: Text("List Device", style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 136, 138, 61),),
                ),
              ),
            ],
           ), 
          ),
          SizedBox(height: height*0.05,),
          Container(
            height: 180,
            child:Stack(
              children: [
                Positioned(
                  child: Material(
                    
                    child: Container(
                      height: 150,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 170, 165, 98),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: new Offset(12.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0),
                        ],
                      ),
                    ),
                )),
                Positioned(
                  child: Card(
                    elevation: 10.0,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child:Container(
                      height: 140,
                      width: 140,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit:BoxFit.fill,
                          image:AssetImage('images/timbangan.jpeg'),
                        ),
                      )
                    ),
                  ), 
                ),
                Positioned(
                  top:10,
                  left:155,
                  child: Container(
                    height: 150,
                    width: 180,
                    child:Column(
                      children: [
                        Text("ID | Timbangan Gas Lingkar", style: TextStyle(
                          fontSize: 20,
                          color:Color.fromARGB(255, 45, 43, 23),
                        ),)
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top:120,
                  left: 320,
                  child: Container(
                    child:Column(
                      children: [
                        Text("Tap Untuk Detail", style: TextStyle(
                          fontSize: 15,
                          color:Color.fromARGB(255, 255, 251, 219),
                        ),)
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          SizedBox(height: height*0.0,),
          Container(
            height: 180,
            child:Stack(
              children: [
                Positioned(
                  child: Material(
                    child: Container(
                      height: 150,
                      width: width*0.9,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 151, 147, 85),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: new Offset(12.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0),
                        ],
                      ),
                    ),
                )),
                Positioned(
                  
                  child: Card(
                    elevation: 10.0,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child:Container(
                      height: 140,
                      width: 140,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit:BoxFit.fill,
                          image:AssetImage('images/timbangan.jpeg'),
                        ),
                      )
                    ),
                  ), 
                ),
                
                Positioned(
                  top:10,
                  left:155,
                  child: Container(
                    height: 150,
                    width: 180,
                    child:Column(
                      children: [
                        Text("ID | Timbangan Gas Lingkar", style: TextStyle(
                          fontSize: 20,
                          color:Color.fromARGB(255, 45, 43, 23),
                        ),)
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top:120,
                  left: 320,
                  child: Container(
                    child:Column(
                      children: [
                        Text("Tap Untuk Detail", style: TextStyle(
                          fontSize: 15,
                          color:Color.fromARGB(255, 255, 251, 219),
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ),


          SizedBox(height: height*0.0,),
          Container(
            height: 180,
            child:Stack(
              children: [
                Positioned(
                  child: Material(
                    
                    child: Container(
                      height: 150,
                      width: width*0.9,
                      decoration: BoxDecoration(
                       color: Color.fromARGB(255, 170, 165, 98),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: new Offset(12.0, 10.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0),
                        ],
                      ),
                    ),
                )),
                Positioned(
                  
                  child: Card(
                    elevation: 10.0,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child:Container(
                      height: 140,
                      width: 140,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit:BoxFit.fill,
                          image:AssetImage('images/timbangan.jpeg'),
                        ),
                      )
                    ),
                  ), 
                ),
                
                Positioned(
                  top:10,
                  left:155,
                  child: Container(
                    height: 150,
                    width: 180,
                    child:Column(
                      children: [
                        Text("ID | Timbangan Gas Lingkar", style: TextStyle(
                          fontSize: 20,
                          color:Color.fromARGB(255, 45, 43, 23),
                        ),)
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top:120,
                  left: 320,
                  child: Container(
                    child:Column(
                      children: [
                        Text("Tap Untuk Detail", style: TextStyle(
                          fontSize: 15,
                          color:Color.fromARGB(255, 255, 251, 219),
                        ),)
                      ],
                    ),
                  ),
                ),

              ],
            )
          ),

        ],
      ),
     ),
    );
  }
}
