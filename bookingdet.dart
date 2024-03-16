import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white, // Replace with your primary color
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16), // Text color
        ),
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100), // Adjust the height as needed
          child: AppBar(
            title: Center(child: Text('Booking Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
            backgroundColor: Color.fromRGBO(253, 253, 177, 1), // Apply primary color to app bar
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Your widget tree continues here
              // Bus Details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bus No:',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ), // Bold text
                  ),
                  Text('KA19 8765',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Origin and Destination
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ernakulam',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ), // Teal color for city
                  ),
                  Text('To',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Aluva',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ), // Teal color for city
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Schedule
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('09:00 AM',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                  Text('02:00 PM',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),

              // Passenger Information
              Center(
                child: Text(
                  'Passenger Information',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ), // Bold text
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Adult(s)',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    ' ₹100',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 100),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ), // Teal color for price
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Children',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    ' ₹0',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 100),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ), // Teal color for price
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Student(s)',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    ' ₹0',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 100),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ), // Teal color for price
                  ),
                ],
              ),
              SizedBox(height: 40),

              // Total Amount
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount:',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                    ), // Bold text
                  ),
                  Text(
                    '₹100',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 100),
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ), // Teal color for price
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Track and Pay Buttons
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(173, 30, 65, 1)),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(double.infinity, 0),
                        ),
                      ),
                      child: Text('Track the bus'),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(173, 30, 65, 1)),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle( fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(double.infinity, 0),
                        ),
                      ),
                      child: Text('Pay 120Rs using UPI'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
