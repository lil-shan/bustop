import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black, fontSize: 18), // Increased font size for body text
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Booking Details'),
          backgroundColor: Color.fromRGBO(173, 30, 65, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.center, // Aligning to the left
                          child: Text(
                            'Ernakulam',
                            style: TextStyle(
                                fontSize: 26, // Increased font size
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'to',
                          style: TextStyle(
                            fontSize: 20, // Increased font size
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Aluva',
                          style: TextStyle(
                              fontSize: 26, // Increased font size
                              color: Colors.black,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    SizedBox(height: 30), // Increased spacing

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2024-03-17',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20, // Increased font size
                          ),
                        ),
                        Text(
                          '09:00 AM',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20, // Increased font size
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30), // Increased spacing
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Aligning to the start
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Adult(s)',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20, // Increased font size
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {},
                        ),
                        Text(
                          '4',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 20, // Increased font size
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Aligning to the start
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Children',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20, // Increased font size
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 20, // Increased font size
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Aligning to the start
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Student(s)',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20, // Increased font size
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 20, // Increased font size
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Regular',
                            style: TextStyle(
                                fontSize: 30, // Increased font size
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          '₹128',
                          style: TextStyle(
                            fontSize: 26, // Increased font size
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 40), // Increased spacing

                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                          Color.fromRGBO(173, 30, 65, 1),
                          foregroundColor:
                          Color.fromRGBO(255, 255, 255, 1.0),
                        ),
                        child: Text('Track Next Bus', style: TextStyle(fontSize: 20)), // Increased font size
                      ),
                    ),

                    SizedBox(height: 30), // Increased spacing

                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Valid for this journey only',
                        style: TextStyle(
                            fontSize: 14, // Increased font size
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
