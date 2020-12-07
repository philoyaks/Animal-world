import 'package:AnimalWorld/constants.dart';
import 'package:AnimalWorld/screen/payment.dart';
import 'package:AnimalWorld/widgets/kappbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/lion2.jpg',
            height: height(1, context),
            width: width(1, context),
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: EdgeInsets.only(left: kpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kappbar(),
                Spacer(),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Ready to \nLearn?\n\n',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontFamily: kfontFamily2)),
                  TextSpan(text: 'Are you ready for the Excitement?\n'),
                ])),
                Row(
                  children: [
                    Text('let\'s Get Started', style: kheadline),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                          )),
                      child: IconButton(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20),
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentPage()));
                          }),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
