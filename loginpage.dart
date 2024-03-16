
import 'package:MyApp/HomePage.dart';
import 'package:MyApp/bookingdet.dart';
import 'package:MyApp/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(Login());
}

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Busstop',
      theme: ThemeData(
        primaryColor: Colors.red,

      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  bool _isValidEmail = true;
  bool _isValidPassword = true;
  void _validateFields() {
    setState(() {
      // Email validation check
      _isValidEmail = RegExp(r'^[\w-/.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(_emailController.text);

      // Password validation check (at least 6 characters)
      _isValidPassword = _passwordController.text.length >= 6;

      // If both email and password are valid, you can proceed with login or other actions
      if (_isValidEmail && _isValidPassword) {
        // Add your logic here
        print('Email: ${_emailController.text}');
        print('Password: ${_passwordController.text}');
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return Bustop();
        }
        )
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(173, 30, 65, 1),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'bustop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your Stop Your Stories',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 40),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'busstop@gmail.com',
                errorText: _isValidEmail ? null : 'Invalid email address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
             obscureText: _obscureText,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                prefixIconColor: Colors.cyan ,
                errorText: _isValidPassword ? null : 'Password must be at least 6 characters',
                suffixIcon: IconButton(
                  icon: Icon(_obscureText ? Icons.visibility: Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  }

                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,

                  ),
                ),

              ),





            TextButton(
              onPressed:()
{},
                // TODO: Implement forgot password functionality

              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed:

                _validateFields,

              style: ElevatedButton.styleFrom(
backgroundColor: Color.fromRGBO(253,253,177,1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),

                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),

              TextButton(
                onPressed: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Sup();
                      }

                  )
                  );


               //    Navigator.of(context).pushNamed(routeName)
                },
                child: Text(
                  'Not a user? Sign up',
                  style: TextStyle(color: Colors.white),
                ),
              ),

       ]
        ),
    ),
    );

  }
}
