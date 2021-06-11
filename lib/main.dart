import 'package:flutter/material.dart';
import 'package:do_good_flutter/screens/home_screen.dart';
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF11292F),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF11292F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypewriterAnimatedTextKit(
              text: ['We Care'],
              textStyle: TextStyle(
                fontFamily: 'Kaushan',
                fontSize: 65.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Image.asset(
              'images/icon.png',
              height: 300.0,
            ),
          ],
        ),
      ),
    );
  }
}
