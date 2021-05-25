import 'package:flutter/material.dart';
import 'package:do_good_flutter/screens/home_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF11292F),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
