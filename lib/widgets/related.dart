import 'package:flutter/material.dart';

import '../constants.dart';

Container relatedCard(
    {BuildContext context, String image, String title, String details}) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          height: height(0.34, context),
          width: width(0.26, context),
        ),
        Text(
          title,
          style: ksubhead,
        ),
        SizedBox(
          width: width(.25, context),
          child: Text(
            details,
            style: ksubhead.copyWith(
                color: Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.w100),
          ),
        ),
      ],
    ),
  );
}
