import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(mypro());
}

class mypro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Bustop();
              }
              )
              );
            },
          ),
          backgroundColor: Color.fromRGBO(173, 30, 65, 1)
      ),
      body: Container(
        color: Color.fromRGBO(173, 30, 65, 1),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Benson Subash',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 16), // Add some space between the button and the right edge
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                'bensonsubash@gmail.com',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'Phone',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                '7736458688',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'Gender',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                'Male',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'dd/mm/yy',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                '10/10/2004',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign Out', style: TextStyle(fontSize: 22)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}