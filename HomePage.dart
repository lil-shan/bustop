

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(Bustop());
}
class Bustop extends StatefulWidget {
  const Bustop({super.key});

  @override
  State<Bustop> createState() => _MyAppState();
}

class _MyAppState extends State<Bustop> {

  @override


  TextEditingController from = TextEditingController();
  TextEditingController to = TextEditingController();
  String _storefrom = '';
  String _storeto = '';
  void _storeText() {
    setState(() {
      _storefrom = from.text;
      _storeto = to.text;
    });
  }

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(253, 253, 177, 100),
            toolbarHeight: 60.0,
            title: Text('bustop',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w400),),
            centerTitle: true,



          ),
          drawer: Drawer(
            backgroundColor: Color.fromRGBO(173, 30, 65, 1),
            child: ListView(
              padding: EdgeInsets.zero,

              children: [

                DrawerHeader(

                  decoration: BoxDecoration(
                    color: Colors.white,

                  ),

                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('bustop',
                      style: TextStyle(color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.w500,

                    ),

                  ),

            ],

                ),

                ),



               SizedBox(height: 80,),
                ListTile(

                title: Text('My Profile',
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                  height: 2.5,
                  letterSpacing: 3
                  ),
                ),
                onTap: (){},
            ),

              ListTile(
                title: Text('Upcoming Trips',
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                    height: 2.5,
                      letterSpacing: 3
                  ),
                ),
                onTap: (){},
              ),
                ListTile(
                  title: Text('Past Trips',
                    style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 2.5,
                        letterSpacing: 3,
                    ),
                  ),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('Help',
                    style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 2.5),
                  ),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('Settings',
                    style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 2.5),
                  ),
                  onTap: (){},
                ),

    ],
    ),



          ),
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [TextField(
                controller: from,
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'From',
                  hintStyle: TextStyle(fontSize: 24),

                ),
              ),

                Divider(
                  height: 2, // Adjust the height of the divider
                  thickness: 1, // Adjust the thickness of the divider
                  color: Colors.black, // Color of the divider
                ),


                TextField(
                  controller: to,
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'To',
                    hintStyle: TextStyle(fontSize: 24),

                  ),

                ),

                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed:(){
                    _storeText();


                  },

             
                    // Add onPressed functionality}

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),


                    backgroundColor: Color.fromRGBO(173, 30, 65, 1),


                  ),
                  child: Text('Find Your Bus', style: TextStyle(fontSize: 24,
                      color: Colors.white),),
                ),


                SizedBox(height: 40,),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,),

                TextField(
                  style: TextStyle(fontSize: 24),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Bus Number',
                    hintStyle: TextStyle(fontSize: 24),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),


                  ),


                ),
                 Divider(
                    height: 1,
                    thickness: 1,
                     color: Colors.black),

              ],
            ),

          )
          
      ),
    );
  }
}
