import 'package:flutter/material.dart';
import 'package:MyApp/HomePage.dart';

void main() {
  runApp(Faqs());
}

class Faqs extends StatefulWidget {
  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAQs',

      home: FAQPage(),
    );
  }
}

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Bustop();
            },
            )
            );
            // Handle back button press
          },
        ),
        title: Text('FAQs'),
        backgroundColor: Color.fromRGBO(253, 253, 177, 1),
      ),
      body: ListView(
        children: <Widget>[
          FAQItem(
            question: 'Can I book pay through UPI?',
            answer: 'UPI payment is available',
          ),


      FAQItem(
            question: 'For how much time is the ticket usable?',
            answer: '2 hours',
          ),



          FAQItem(
            question: 'What should I do if I miss the bus?',
            answer: 'You can board the next bus given its arrival time is within 2 hrs of the time at which the ticket was booked',
          ),

           SizedBox(height: 40,),
             Text(
            'Need more help? Contact us',
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          Text(
            '49579-348           bustop@gmail.com',
            style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),

          // Add contact details here
        ],
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(question,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
        children: <Widget>[

          Text(answer, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),

        ],
      ),
    );
  }
}
