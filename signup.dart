import 'package:flutter/material.dart';
import 'loginpage.dart';
void main() {
  runApp(Sup());
}

class Sup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _name, _phoneNumber, _email, _dob, _gender, _password, _confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      backgroundColor: Color.fromRGBO(173, 30, 65, 1),
      body: Form(
        key: _formKey,

        child: ListView(


          
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            Align(
            alignment: Alignment.centerLeft,


              child: IconButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }

                    )
                );
              }, icon: Icon(Icons.arrow_back,
                size: 30,
              color: Colors.black,)),
    ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
              ),
              onSaved: (value) => _name = value,
            ),
            SizedBox(height: 24.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Phone number',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),

              ),
              onSaved: (value) => _phoneNumber = value,
            ),
            SizedBox(height: 24.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                ),
              ),
              onSaved: (value) => _email = value,
            ),
            SizedBox(height: 24.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Date of Birth (dd/mm/yy)',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                ),
              ),
              onSaved: (value) => _dob = value,
            ),
            SizedBox(height: 24.0),
            DropdownButtonFormField(
              decoration: InputDecoration(
                hintText: 'Gender',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                ),
              ),
              items: ['Male', 'Female', 'Other'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _gender = newValue;
                });
              },
            ),
            SizedBox(height: 24.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,width: 20.0)
                ),
              ),
              obscureText: true,
              onSaved: (value) => _password = value,
            ),
            SizedBox(height: 24.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,
                        width: 24.0)
                ),
              ),
              obscureText: true,
              onSaved: (value) => _confirmPassword = value,
            ),
            SizedBox(height: 24),
          Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           Padding(
            padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(

              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // TODO: Implement sign-up logic
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }

                      )
                  );
                }

              },

              child: Text('Sign Up'),
            ),
           )
  ]

          )
    ]
        ),
      ),
    );

  }
}
