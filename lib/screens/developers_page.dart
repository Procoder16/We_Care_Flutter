import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DevelopersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.first_page,
            color: Color(0xFF11212F),
          ),
          iconSize: 30.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xFF84EFD5),
        centerTitle: true,
        title: Text(
          "Developer's Page",
          style: TextStyle(
            color: Color(0xFF11212F),
            fontSize: 22.0,
          ),
        ),
        actions: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Image(
                image: AssetImage('images/icon.png'),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: 180.0,
                width: 180.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/myPic.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Column(
                  children: [
                    Text(
                      'Soumik Mukherjee',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Soumik is a B.Tech (CSE) student at KiiT, Bhubaneshwar. He has keen interest in the field of development. He also has good problem solving abilities. He is a student with a positive attitude towards everything. Feel free to connect to him through the given links below.',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 45.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          size: 60.0,
                        ),
                        onTap: () async {
                          const url =
                              'https://www.instagram.com/blogs_by_soumik/?hl=en';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      GestureDetector(
                        child: Icon(
                          FontAwesomeIcons.linkedin,
                          size: 60.0,
                        ),
                        onTap: () async {
                          const url =
                              'https://www.linkedin.com/in/soumik-mukherjee-438b451b5/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      GestureDetector(
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          size: 60.0,
                        ),
                        onTap: () async {
                          const url =
                              'https://twitter.com/SoumikM40838957?s=09';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      GestureDetector(
                        child: Icon(
                          FontAwesomeIcons.github,
                          size: 55.0,
                        ),
                        onTap: () async {
                          const url = 'https://github.com/Procoder16';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.mail_outlined,
                          size: 65.0,
                        ),
                        onTap: () {
                          launch("mailto:abc123@gmail.com");
                        },
                      ),
                      GestureDetector(
                        child: Icon(
                          FontAwesomeIcons.blogger,
                          size: 60.0,
                        ),
                        onTap: () async {
                          const url =
                              'https://myfitnessblogz.blogspot.com/p/about.html';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
