import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color.fromRGBO(153, 30, 65, 1),


        leading: IconButton(
          icon: Icon(Icons.arrow_back),
         onPressed: () {},
        ),
        title: Text('User Profile', ),
      ),
body: Column(
        children: <Widget>[
        SizedBox(height: 30,),
         CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),
          SizedBox(height: 20,),
          Text(
            'Benson Subash',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

          ),
          SizedBox(height: 20,),
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit Profile',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
                  255, 253, 253, 177)), // Set background color to yellow
            ),
          ),
          SizedBox(height: 30,),

          ListTile(
            title: Text('Email',style: TextStyle(fontSize: 20),),
            subtitle: Text('bensonsubash@gmail.com',style: TextStyle(fontSize: 20),),
          ),
          ListTile(
            title: Text('Phone',style: TextStyle(fontSize: 20),),
            subtitle: Text('7736445868',style: TextStyle(fontSize: 20),),
          ),
          ListTile(
            title: Text('Gender',style: TextStyle(fontSize: 20),),
            subtitle: Text('Male',style: TextStyle(fontSize: 20),),
          ),
          ListTile(
            title: Text('Date of Birth',style: TextStyle(fontSize: 20),),
            subtitle: Text('10/10/2004',style: TextStyle(fontSize: 20),),
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () {},
            child: Text('Sign Out',style: TextStyle(fontSize: 26),),

            style: ElevatedButton.styleFrom( textStyle: TextStyle( color: Colors.black,),
              backgroundColor: Color.fromRGBO(253, 253, 177, 1),// Set the text color
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10), // Set padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9999),),




            ),
      ),
      ]
    ),

  ),
  ),
  );

}
