import 'package:AnimalWorld/constants.dart';
import 'package:AnimalWorld/widgets/related.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondHomePage extends StatefulWidget {
  @override
  _SecondHomePageState createState() => _SecondHomePageState();
}

class _SecondHomePageState extends State<SecondHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.4,
              child: Container(
                width: width(1, context),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/download4.jpg',
                  ),
                )),
                child: Center(
                  child: Text(
                    'You are Welcome',
                    style: kheadline.copyWith(fontSize: 34),
                  ),
                ),
              )),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.7,
            child: Container(
              padding: EdgeInsets.only(left: kpadding, top: kpadding),
              decoration: BoxDecoration(
                  color: Colors.brown[400],
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Related for You',
                    style: ksubhead,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: width(1, context),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: articles
                              .map((e) => relatedCard(
                                  context: context,
                                  details: e.details,
                                  image: e.image,
                                  title: e.title))
                              .toList()),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Quick Categories',
                    style: kheadline,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildColumn(
                          text: 'Reptile', icon: 'assets/icons/reptile.svg'),
                      buildColumn(
                          text: 'Amphibia', icon: 'assets/icons/amphibian.svg'),
                      buildColumn(
                          text: 'Mammal', icon: 'assets/icons/mammal.svg'),
                      buildColumn(
                          text: 'Andropod',
                          icon: 'assets/icons/anthropods.svg'),
                      buildColumn(
                          text: 'Pisces', icon: 'assets/icons/fish.svg'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Column buildColumn({String text, String icon}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
          height: 50,
          width: 50,
          color: Colors.brown[200],
          child: SvgPicture.asset(icon)),
      Text(
        text,
        style: ksubhead,
      )
    ],
  );
}
