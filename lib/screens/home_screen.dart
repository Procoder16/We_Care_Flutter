import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF11212F),
        centerTitle: true,
        title: Text('Home Page'),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF11512F),
              ),
              child: Icon(
                Icons.menu,
                size: 30.0,
              ),
            ),
            onTap: () {},
          ),
        ),
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
