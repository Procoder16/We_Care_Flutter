import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:do_good_flutter/utilities/homeScreenContents.dart';
import 'package:do_good_flutter/utilities/constants.dart';

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
            color: Color(0xFF11212F),
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
          drawer: CustomDrawer(),
          screenContents: HomeScreenContents(),
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Color(0xFF84EFD5),
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey.withAlpha(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "images/icon.png",
                    width: 120,
                    height: 120,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We Care",
                    style: TextStyle(
                      color: Color(0xFF11212F),
                      fontFamily: 'Kaushan',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Profile");
            },
            leading: Icon(
              Icons.info_outlined,
              color: Color(0xFF11212F),
              size: 30.0,
            ),
            title: Text(
              "Our Motto",
              style: kSideBarText,
            ),
          ),
          Divider(
            height: 1,
            color: Color(0xFF11212F),
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped settings");
            },
            leading: Icon(
              Icons.people,
              color: Color(0xFF11212F),
              size: 30.0,
            ),
            title: Text(
              "Our Team",
              style: kSideBarText,
            ),
          ),
          Divider(
            height: 1,
            color: Color(0xFF11212F),
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Payments");
            },
            leading: Icon(
              Icons.business_rounded,
              color: Color(0xFF11212F),
              size: 30.0,
            ),
            title: Text(
              "Contact Us",
              style: kSideBarText,
            ),
          ),
          Divider(
            height: 1,
            color: Color(0xFF11212F),
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Notifications");
            },
            leading: Icon(
              Icons.person,
              color: Color(0xFF11212F),
              size: 30.0,
            ),
            title: Text(
              "Developer's Page",
              style: kSideBarText,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'DONATE',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  color: Color(0xFF11212F),
                  minWidth: double.infinity,
                ),
                SizedBox(
                  height: 35.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
