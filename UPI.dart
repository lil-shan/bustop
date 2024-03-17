import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Define variables to hold values (replace with actual data fetching)
  final int adultCount = 1;
  final int childCount = 2;
  final int studentCount = 0;
  final double totalAmount = 120.0;
  String selectedPaymentMethod = ''; // Initially no selection

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(173, 30, 65,1),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: Text(
            'Payment Page',
            style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold)
            ,
          ),
        ),
        body: SingleChildScrollView( // Allow scrolling for long content
          child: Column(
            children: [
              SizedBox(height: 30,),// Row for Adult and its count
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 40), // Adjust the space from the left
                  Text(
                    'Adult',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20, // Increase font size by 2
                    ),
                  ),
                  Spacer(),
                  Text(
                    '$adultCount',
                    style: TextStyle(
                      fontSize: 20, // Increase font size by 2
                    ),
                  ), // Display actual count
                  SizedBox(width: 40), // Adjust the space from the right
                ],
              ),

              SizedBox(height: 20),

              // Row for Children and its count
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 40), // Adjust the space from the left
                  Text(
                    'Children',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20, // Increase font size by 2
                    ),
                  ),
                  Spacer(),
                  Text(
                    '$childCount',
                    style: TextStyle(
                      fontSize: 20, // Increase font size by 2
                    ),
                  ), // Display actual count
                  SizedBox(width: 40), // Adjust the space from the right
                ],
              ),

              SizedBox(height: 20),

              // Row for Student and its count
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 40), // Adjust the space from the left
                  Text(
                    'Student',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20, // Increase font size by 2
                    ),
                  ),
                  Spacer(),
                  Text(
                    '$studentCount',
                    style: TextStyle(
                      fontSize: 20, // Increase font size by 2
                    ),
                  ), // Display actual count
                  SizedBox(width: 40), // Adjust the space from the right
                ],
              ),

              SizedBox(height: 20),

              // ListTile for Total amount
              ListTile(
                title: Text(
                  'Total amount',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20, // Increase font size by 2
                  ),
                ),
                trailing: Text(
                  '$totalAmount',
                  style: TextStyle(
                    fontSize: 20, // Increase font size by 2
                  ),
                ), // Display actual amount
              ),

              // RadioListTile for Payment Options
              RadioListTile<String>(
                title: Text(
                  'Google Pay',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20, // Increase font size by 2
                  ),
                ),
                value: 'google_pay',
                groupValue: selectedPaymentMethod, // Track selection
                onChanged: (value) =>
                    setState(() => selectedPaymentMethod = value!),
              ),
              RadioListTile<String>(
                title: Text(
                  'PhonePe',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20, // Increase font size by 2
                  ),
                ),
                value: 'phonepe',
                groupValue: selectedPaymentMethod, // Track selection
                onChanged: (value) =>
                    setState(() => selectedPaymentMethod = value!),
              ),
              RadioListTile<String>(
                title: Text(
                  'Paytm',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20, // Increase font size by 2
                  ),
                ),
                value: 'paytm',
                groupValue: selectedPaymentMethod, // Track selection
                onChanged: (value) =>
                    setState(() => selectedPaymentMethod = value!),
              ),

              // Implement logic for Pay Now button based on selection
              ElevatedButton(
                onPressed: () {
                  if (selectedPaymentMethod.isEmpty) {
                    // Show error message if no payment method selected
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please select a payment method'),
                      ),
                    );
                  } else {
                    // Handle payment processing based on selectedPaymentMethod
                    // (replace with your actual payment processing logic)
                    print('Processing payment using $selectedPaymentMethod');
                  }
                },
                child: Text(
                  'Pay Now',
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Color.fromRGBO(173, 30, 65, 1),
                    fontSize: 20, // Increase font size by 2
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(173, 30, 65, 1)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
