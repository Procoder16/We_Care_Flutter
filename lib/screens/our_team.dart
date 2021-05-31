import 'package:flutter/material.dart';

class OurTeam extends StatelessWidget {
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
          "Our Team",
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
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage('images/group.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'This is our core team. We people manage everything about our organisation. We have divided the work among us equally so that no one sits idle or no one is burdened with all the work. We have divided ourselves under various committees like the communications, management, fund collection, social media marketing, public announcements, cooking, marketing, etc.',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'The management committee is headed by Soumik, communications is headed by Ritam, fund collection is headed by Swapnil, social media marketing is headed by Aniket, public announcements is headed by Shubham, cooking is headed by Sushreet, marketing is headed by Rahul and fund collection is headed by Rittik.',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Anyone interested in joining or team may directly contact Soumik by visiting the Developer\'s Page.',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
