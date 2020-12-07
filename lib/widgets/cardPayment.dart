import 'package:flutter/material.dart';

import '../constants.dart';

Container cardPayment(
    BuildContext context, String amount, String subType, String images) {
  return Container(
    margin: EdgeInsets.only(right: kpadding, bottom: kpadding),
    height: height(.2, context),
    width: width(.8, context),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: AssetImage(images), fit: BoxFit.cover)),
    child: Center(
        child: Text(
      '$subType  Subscription:   \$$amount',
      style: kheadline,
    )),
  );
}
