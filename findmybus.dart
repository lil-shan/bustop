import 'package:MyApp/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(findmybus1());
}

class findmybus1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Schedule',
      theme: ThemeData(
      ),
      home: BusScheduleScreen(),
    );
  }
}

class BusScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(173, 30, 65, 1),
        leading: IconButton(
    icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)
            {
              return Bustop();
            }));
          },
        ),

        title: Text('Ernakulam - Aluva'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {

              // Implement filter action
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Bus No: 3457'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Departure: 5:15 Arrival: 5:45'),
                Text('Fare: 70 Rs'),
              ],
            ),
            trailing: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(173, 30, 65, 1)), // Change button background color
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(color: Colors.white), // Change text color here
                ),
              ),
              onPressed: () {
                // Implement button onPressed action
              },
              child: Text('Book Now'),
            ),
          ),
          ListTile(
            title: Text('Bus No: 1824'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Departure: 6:15 Arrival: 6:45'),
                Text('Fare: 70 Rs'),
              ],
            ),
            trailing: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(173, 30, 65, 1)), // Change button background color
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(color: Colors.white), // Change text color here
                ),
              ),
              onPressed: () {
                // Implement button onPressed action
              },
              child: Text('Book Now'),
            ),
          ), ListTile(
            title: Text('Bus No: 1454'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Departure: 7:15 Arrival: 9:00'),
                Text('Fare: 75 Rs'),
              ],
            ),
            trailing: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(173, 30, 65, 1)), // Change button background color
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(color: Colors.white), // Change text color here
                ),
              ),
              onPressed: () {
                // Implement button onPressed action
              },
              child: Text('Book Now'),
            ),
          ), ListTile(
            title: Text('Bus No: 3875'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Departure: 9:15 Arrival: 10:00'),
                Text('Fare: 75 Rs'),
              ],
            ),
            trailing: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(173, 30, 65, 1)), // Change button background color
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(color: Colors.white), // Change text color here
                ),
              ),
              onPressed: () {
                // Implement button onPressed action
              },
              child: Text('Book Now'),
            ),
          ),
        ],
      ),
    );
  }
}

