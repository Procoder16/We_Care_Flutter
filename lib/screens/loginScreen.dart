import 'package:do_good_flutter/models/loginPageTextField.dart';
import 'package:flutter/material.dart';
import 'package:do_good_flutter/utils/constants.dart';
import 'package:do_good_flutter/screens/homescreen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:do_good_flutter/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phnNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF11212F),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/logo.png'),),
                SizedBox(
                  height: 50,
                ),
                LoginPageTextField(
                  phnNoController,
                  'Enter your mobile number',
                  false,
                ),
                SizedBox(
                  height: 10,
                ),
                LoginPageTextField(
                  passwordController,
                  'Enter the password',
                  true,
                ),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  color: Color(0xFF11212F),
                  onPressed: () {
                    if ((phnNoController == "user1626") && (passwordController == "123456")) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                      Fluttertoast.showToast(
                        msg: "Logged in Successfully",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        fontSize: 16,
                      );
                    } else if (phnNoController.text == '' ||
                        passwordController.text == '') {
                      Fluttertoast.showToast(
                        msg: "Please fill in the credentials to continue",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        fontSize: 16,
                      );
                    } else {
                      Fluttertoast.showToast(
                        msg: "Incorrect Phone Number/Password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        fontSize: 16,
                      );
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}