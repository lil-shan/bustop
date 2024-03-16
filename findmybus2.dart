import 'package:flutter/material.dart';

void main() {
  runApp(findmybus2());
}

class findmybus2 extends StatelessWidget {
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
        leading: Icon(Icons.arrow_back),
        title: Text('Ernakulam - Alappuzha'),
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
            title: Text('Bus No: 0032'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Departure: 5:15 Arrival: 6:45'),
                Text('Fare: 120 Rs'),
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
            title: Text('Bus No: 1925'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Departure: 6:15 Arrival: 7:45'),
                Text('Fare: 120 Rs'),
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
            title: Text('Bus No: 2565'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Departure: 7:15 Arrival: 10:00'),
                Text('Fare: 125 Rs'),
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
            title: Text('Bus No: 4986'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Departure: 9:15 Arrival: 11:00'),
                Text('Fare: 125 Rs'),
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

