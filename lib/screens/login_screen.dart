import 'package:do_good_flutter/utilities/homeScreenContents.dart';
import 'package:flutter/material.dart';
import 'package:do_good_flutter/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF84EFD5),
        title: Text(
          'User Authentication',
          style: TextStyle(
            fontSize: 22.0,
            color: Color(0xFF11212F),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Column(
                children: [
                  Text(
                    'Hey There!!! 😃',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontFamily: 'Kaushan',
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email Id',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    color: Color(0xFF84EFD5),
                    child: Text(
                      'Send OTP',
                      style: TextStyle(
                        color: Color(0xFF11212F),
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      print('OTP Sent');
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter the OTP',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    child: Text(
                      'Tap to verify',
                      style: TextStyle(
                        color: Color(0xFF11212F),
                        fontSize: 20.0,
                      ),
                    ),
                    color: Color(0xFF84EFD5),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
