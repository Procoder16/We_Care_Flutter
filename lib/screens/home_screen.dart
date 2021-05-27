import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FSBStatus status;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.menu,
            size: 30,
          ),
          onPressed: () {
            setState(() {
              status = status == FSBStatus.FSB_OPEN
                  ? FSBStatus.FSB_CLOSE
                  : FSBStatus.FSB_OPEN;
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF11212F),
          centerTitle: true,
          title: Text('Home Page'),
        ),
        body: FoldableSidebarBuilder(
          drawerBackgroundColor: Color(0xFF11212F),
          status: status,
          drawer: null,
          screenContents: HomeScreenContents(),
        ),
      ),
    );
  }
}

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
