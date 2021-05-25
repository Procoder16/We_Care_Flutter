import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF11212F),
        centerTitle: true,
        title: Text('Home Page'),
      ),
      body: SafeArea(
        child: Container(
          child: Text(
            'Hello World',
            style: TextStyle(
              fontFamily: 'AmaticSC',
              fontSize: 45.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
