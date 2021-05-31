import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class OurMotto extends StatelessWidget {
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
          "Our Motto",
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
        child: Center(
          child: Column(
            children: [
              Text(
                'We Care',
                style: TextStyle(
                  fontFamily: 'Kaushan',
                  fontSize: 45.0,
                  color: Color(0xFF84EFD5),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Our is motto is nothing different than the name of our organisation. We Care... as the name suggests, we really do care about mankind and specially for them who cannot care for themselves due to some reason or the other.',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'We started this organisation casually one day. Me and some of my friends, while having a conversation about shopping one day, diverted to some other thing and that was, our old clothes. We tend to buy new clothes from time to time thereby filling and stuffing our cupboards with clothes. After some time we realise that we don\'t need them but still we keep them as it is. So we decided to donate those old clothes to them who really need it. We gathered some old clothes from our locality also and went to a nearby railway station and gave them to the people who don\'t even get even food for a living. Their smile after getting those clothes was unmatchable and therefore we made our minds and decided to continue this work.',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'From then on, we donate clothes, food, essentials like sanitary pad, etc. to these people and also to poor people who approach us for help and to those who can\'t afford these necessary things. We even organise blood donation camp so that people can come forward to donate blood that can literally save someone\'s life.',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
