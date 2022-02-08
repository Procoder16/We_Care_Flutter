import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:do_good_flutter/screens/contact_us.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:toast/toast.dart';

class DonationPage extends StatefulWidget {
  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();
  @override
  void initState() {
    super.initState();
    razorpay = new Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    razorpay.clear();
  }

  void openCheckOut() {
    var options = {
      "key":
          "rzp_test_H1x4nD096VNKaL", //this was the text key, when developing the actual productionable app, generate live mode
      "amount": num.parse(textEditingController.text) * 100,
      "name": "WE CARE",
      "description": "Donation for We Care Organisation",
      "prefill": {
        "contact": "",
        "email": "",
      },
      "external": {
        "wallets": ["paytm"],
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlerPaymentSuccess() {
    print('PAYMENT SUCCESSFUL');
    Toast.show('PAYMENT SUCCESSFUL', context);
  }

  void handlerErrorFailure() {
    print('PAYMENT DECLINED');
    Toast.show('PAYMENT DECLINED', context);
  }

  void handlerExternalWallet() {
    print('EXTERNAL WALLET SELECTED');
    Toast.show('EXTERNAL WALLET SELECTED', context);
  }

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
          "Want to Donate?",
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
          // pixel problem
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'We accept donation in any form. People contact us for donating money, grains, pulses, rice, clothes, spices, etc. Anyone interested to make a contribution from their end please come forward. It would be highly appreciable.',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'If you want to make your contribution through money, enter the amount and click the button below and you will be taken to the payments gateway.',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.0,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 18.0),
                      controller: textEditingController,
                      decoration: InputDecoration(
                        hintText: 'Enter the amount',
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: RaisedButton(
                      color: Color(0xFF84EFD5),
                      child: Text(
                        'Donate',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF11212F),
                        ),
                      ),
                      onPressed: () {
                        openCheckOut();
                        setState(() {
                          textEditingController.clear();
                          Navigator.pop(context);
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'If you want to make your contribution by directly donating grains, pulses, clothes, etc., you can directly contact us and our team will reach your home to pick them up. Click the button below to head over to the Contacts Page.',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: RaisedButton(
                      color: Color(0xFF84EFD5),
                      child: Text(
                        'Contacts Page',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF11212F),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactUs(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Thanks a lot for your valuable donation🙏',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
