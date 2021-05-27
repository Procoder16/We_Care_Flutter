import 'package:flutter/material.dart';

class HomeScreenContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF11292F),
      child: Text(
        'Hello World',
        style: TextStyle(
          fontFamily: 'AmaticSC',
          fontSize: 45.0,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
