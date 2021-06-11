import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
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
          "Contact Us",
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
                height: 10.0,
              ),
              Text(
                'Want to contact for further information?',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Text(
                      'Now, since the time we have started for for this, we have been getting a lot of DMs on various platforms regarding the procedure for joining the organising, what and how to donate and when to donate. People also ask some other doubts that they want to clear. For all of them, here is the list of platforms, where you can contact us directly.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
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
                        SizedBox(
                          height: 20.0,
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
                        SizedBox(
                          height: 20.0,
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
                        SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          child: Icon(
                            FontAwesomeIcons.phoneVolume,
                            size: 60.0,
                          ),
                          onTap: () {
                            launch("tel://+91 9876543210");
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.mail_outlined,
                            size: 60.0,
                          ),
                          onTap: () {
                            launch("mailto:abc123@gmail.com");
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
