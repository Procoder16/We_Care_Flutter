import 'package:do_good_flutter/utilities/homeScreenContents.dart';
import 'package:flutter/material.dart';
import 'package:do_good_flutter/screens/home_screen.dart';
import 'package:email_auth/email_auth.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _otpController = TextEditingController();

    void sendOTP() async {
      EmailAuth.sessionName = "We Care";
      var res = await EmailAuth.sendOtp(receiverMail: _emailController.text);
      if (res) {
        print('OTP SENT');
      } else {
        print('Failed to send OTP');
      }
    }

    void verifyOTP() {
      var res = EmailAuth.validate(
          receiverMail: _emailController.text, userOTP: _otpController.text);
      if (res) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      } else {
        print('Please enter a valid OTP');
      }
    }

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
                    'Hey, There!!! 😃',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontFamily: 'Kaushan',
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email Id',
                      suffixIcon: TextButton(
                        child: Text(
                          'Send OTP',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xFF84EFD5),
                          ),
                        ),
                        onPressed: () {
                          FocusScope.of(context).requestFocus(
                            FocusNode(),
                          );
                          sendOTP();
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                    controller: _otpController,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter the OTP',
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
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
                    onPressed: () {
                      verifyOTP();
                      FocusScope.of(context).requestFocus(
                        FocusNode(),
                      );
                    },
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
