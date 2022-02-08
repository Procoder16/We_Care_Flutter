import 'package:do_good_flutter/screens/contact_us.dart';
import 'package:do_good_flutter/screens/donation_page.dart';
import 'package:do_good_flutter/screens/about_us.dart';
import 'package:do_good_flutter/screens/our_team.dart';
import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:do_good_flutter/utilities/homeScreenContents.dart';
import 'package:do_good_flutter/utilities/constants.dart';
import 'package:do_good_flutter/screens/developers_page.dart';

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
          backgroundColor: Color(0xFF84EFD5),
          centerTitle: true,
          title: Text(
            'We Care',
            style: TextStyle(
              fontFamily: 'Kaushan',
              fontSize: 45.0,
              color: Color(0xFF11212F),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: FoldableSidebarBuilder(
          drawerBackgroundColor: Color(0xFF11212F),
          status: status,
          drawer: CustomDrawer(
            closeDrawer: () {
              setState(() {
                status = FSBStatus.FSB_CLOSE;
              });
            },
          ),
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
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
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
            SizedBox(
              height: 30.0,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OurMotto(),
                  ),
                );
                closeDrawer();
              },
              leading: Icon(
                Icons.info_outlined,
                color: Color(0xFF11212F),
                size: 30.0,
              ),
              title: Text(
                "About Us",
                style: kSideBarText,
              ),
            ),
            Divider(
              height: 1,
              color: Color(0xFF11212F),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OurTeam(),
                  ),
                );
                closeDrawer();
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactUs(),
                  ),
                );
                closeDrawer();
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DevelopersPage(),
                  ),
                );
                closeDrawer();
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
            SizedBox(
              height: 50.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DonationPage(),
                      ),
                    );
                    closeDrawer();
                  },
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
          ],
        ),
      ),
    );
  }
}
