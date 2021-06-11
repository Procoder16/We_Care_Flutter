import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:do_good_flutter/utilities/constants.dart';

class HomeScreenContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF11292F),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Our recent activities...',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Kaushan',
                    color: Color(0xFF84EFD5),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  color: Color(0xFF11292F),
                  elevation: 10.0,
                  shadowColor: Color(0xFF84EFD5),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image(
                            image: AssetImage('images/food2.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '26/05/2021',
                                style: kCardsText,
                              ),
                              Text(
                                'Digha',
                                style: kCardsText,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 5.0),
                          child: Text(
                            'The cyclone Yaas devastated many lives in and around Digha this time. We could only help them by giving them food and that\'s what we did. We donated food to them who lost their houses and families during the calamity.',
                            style: kCardsText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  color: Color(0xFF11292F),
                  elevation: 10.0,
                  shadowColor: Color(0xFF84EFD5),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image(
                            image: AssetImage('images/bloodD.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '17/04/2021',
                                style: kCardsText,
                              ),
                              Text(
                                'Barrackpore',
                                style: kCardsText,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 5.0),
                          child: Text(
                            'This time we organised a plasma donation camp where covid recovered people can come forward voluntarily to donate their plasma to help the ones who need it. To our surprise too, there were more than 250 donors who came up.',
                            style: kCardsText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  color: Color(0xFF11292F),
                  elevation: 10.0,
                  shadowColor: Color(0xFF84EFD5),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image(
                            image: AssetImage('images/clothes.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '16/03/2021',
                                style: kCardsText,
                              ),
                              Text(
                                'Kolkata',
                                style: kCardsText,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 5.0),
                          child: Text(
                            'We held another clothes donation drive but this time it was for the people of Kolkata who cannot afford if for them. We donated clothes to more than 200 FAMILIES this time.',
                            style: kCardsText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  color: Color(0xFF11292F),
                  elevation: 10.0,
                  shadowColor: Color(0xFF84EFD5),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image(
                            image: AssetImage('images/sanitary.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '01/01/2021',
                                style: kCardsText,
                              ),
                              Text(
                                'Sodepur',
                                style: kCardsText,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 5.0),
                          child: Text(
                            'We started our new year with some noble work. We donated sanitary pads to those disadvantaged society that do not know the utility and necessity of sanitary pads.',
                            style: kCardsText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  color: Color(0xFF11292F),
                  elevation: 10.0,
                  shadowColor: Color(0xFF84EFD5),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image(
                            image: AssetImage('images/last.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '05/09/2020',
                                style: kCardsText,
                              ),
                              Text(
                                'Howrah',
                                style: kCardsText,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 5.0),
                          child: Text(
                            'This clothes donation drive targeted such population from Howrah and we donated clothes and blankets so that they can atleast have something to wear in the coming winter.',
                            style: kCardsText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  color: Color(0xFF11292F),
                  elevation: 10.0,
                  shadowColor: Color(0xFF84EFD5),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image(
                            image: AssetImage('images/food1.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '16/07/2020',
                                style: kCardsText,
                              ),
                              Text(
                                'Barrackpore',
                                style: kCardsText,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 5.0),
                          child: Text(
                            'This was our first food drive that we held feeding over 200+ people who cannot even afford their food during the pandemic last year.',
                            style: kCardsText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  color: Color(0xFF11292F),
                  elevation: 10.0,
                  shadowColor: Color(0xFF84EFD5),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image(
                            image: AssetImage('images/mask.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '20/05/2020',
                                style: kCardsText,
                              ),
                              Text(
                                'Barrackpore',
                                style: kCardsText,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 5.0),
                          child: Text(
                            'This was out first such activity and we started as a team. We donated hand sanitizers and mask to over 100 people in and around Barrackpore Station.',
                            style: kCardsText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Text(
                  'Part of being a person is about helping others...',
                  style: TextStyle(
                    fontFamily: "Kaushan",
                    fontSize: 20.0,
                    color: Color(0xFF84EFD5),
                  ),
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
