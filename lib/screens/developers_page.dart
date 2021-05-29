import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: 180.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/myPic.png'),
                      ),
                    ),
                  ),
                ),
                Expanded(
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
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25.0,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Soumik's LinkedIn Profile",
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url =
                                      "https://www.linkedin.com/in/soumik-mukherjee-438b451b5/";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw "Failed to open LinkedIn";
                                  }
                                },
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Soumik's GitHub Profile",
                              style:
                                  TextStyle(fontSize: 20.0, color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url = "https://github.com/Procoder16";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw "Failed to open GitHub";
                                  }
                                },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
