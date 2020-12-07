import 'package:AnimalWorld/constants.dart';
import 'package:AnimalWorld/screen/secondHome.dart';
import 'package:AnimalWorld/widgets/cardPayment.dart';
import 'package:AnimalWorld/widgets/kappbar.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[400],
        body: Container(
          padding: EdgeInsets.only(left: kpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kappbar(),
              SizedBox(
                height: kpadding,
              ),
              Text(
                'Choose a Plan',
                style: kheadline,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: height(.72, context),
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      cardPayment(context, '5.0', 'Weekly',
                          'assets/images/download.jpg'),
                      cardPayment(context, '19.0', 'a month',
                          'assets/images/download3.jpg'),
                      cardPayment(context, '58.0', '3 months',
                          'assets/images/download2.jpg'),
                      cardPayment(context, '118.0', '6 months',
                          'assets/images/download1.jpg'),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Text('last Step to continue...', style: kheadline),
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
                                  builder: (context) => SecondHomePage()));
                        }),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
