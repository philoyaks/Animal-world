import 'package:flutter/material.dart';

import '../constants.dart';

Container kappbar() {
  return Container(
    padding: EdgeInsets.only(top: kpadding, right: 5),
    child: Row(
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'animal planet\n',
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'WorkSans')),
          TextSpan(text: 'we love animals here', style: ksubhead)
        ])),
        Spacer(),
        IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white70,
            ),
            onPressed: () {})
      ],
    ),
  );
}
