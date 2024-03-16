import 'package:flutter/material.dart';
import 'package:MyApp/HomePage.dart';

void main() {
  runApp(past());
}

class past extends StatefulWidget {
  @override
  State<past> createState() => _pastState();
}

class _pastState extends State<past> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Past Trips',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(253,253,177,1),
      ),
      home: PastTripsScreen(),
    );
  }
}

class PastTripsScreen extends StatefulWidget {
  @override
  State<PastTripsScreen> createState() => _PastTripsScreenState();
}

class _PastTripsScreenState extends State<PastTripsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
       onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)
         {
           return Bustop();
         }
         )
         );
          }

        ),


        title: Text('Past Trips',style: TextStyle(fontWeight: FontWeight.bold,height: 40),),
        backgroundColor: Color.fromRGBO(253,253,177,1),

      ),
      body: ListView(

        children: <Widget>[


            TripCard(
              route: 'Ernakulam - Kollam',
              cost: '457.00Rs',
              date: '15/03/2024',
              adults: 2,
              children: 1,
              students: 0,
            ),
          TripCard(
            route: 'Kollam - Errnakulam',
            cost: '457.00Rs',
            date: '13/03/2024',
            adults: 2,
            children: 1,
            students: 0,
          ),
          TripCard(
            route: 'Aluva - Ernakulam',
            cost: '27.00Rs',
            date: '11/03/2024',
            adults: 1,
            children: 0,
            students: 0,
          ),


            // Repeat TripCard for each trip
          ],
          )
        );



  }
}

class TripCard extends StatefulWidget {
  final String route;
  final String cost;
  final String date;
  final int adults;
  final int children;
  final int students;

  const TripCard({
    Key? key,
    required this.route,
    required this.cost,
    required this.date,
    required this.adults,
    required this.children,
    required this.students,
  }) : super(key: key);

  @override
  State<TripCard> createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  @override
  Widget build(BuildContext context) {
    return Card(

      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(widget.route, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(widget.cost, style: TextStyle(fontSize: 16)),
            Text(widget.date, style: TextStyle(fontSize: 16)),
            Text('Adult: ${widget.adults}'),
            Text('Child: ${widget.children}'),
            Text('Student: ${widget.students}'),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Implement Quick Book functionality
              },
              child: Text('Quick Book'),
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(173,30,65,1),foregroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
