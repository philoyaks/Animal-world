import 'package:flutter/material.dart';

class Article {
  String image;
  String title;
  String details;

  Article({this.details, this.image, this.title});
}

const kpadding = 20.0;
const kTexStyle = TextStyle(
  fontSize: 30,
);

const ksubhead =
    TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'WorkSans');

const kfontFamily = 'WorkSans';
const kfontFamily2 = 'LuckiestGuy';

height(double x, BuildContext context) {
  return MediaQuery.of(context).size.height * x;
}

width(double x, BuildContext context) {
  return MediaQuery.of(context).size.height * x;
}

const kheadline =
    TextStyle(fontSize: 24, color: Colors.white70, fontFamily: kfontFamily2);

List<Article> articles = [
  Article(
    image: 'assets/images/post/cow.jpg',
    details: 'There are several ways to milk a cow based on way ...',
    title: 'How to milk a cow',
  ),
  Article(
    image: 'assets/images/post/crickets.jpg',
    details: 'People say the grasshopper is fragile but what do you ...',
    title: 'Grasss-It',
  ),
  Article(
    image: 'assets/images/post/dog.jpg',
    details: 'Dogs poses to be one of the best ...',
    title: 'The Go-To!!!',
  ),
  Article(
    image: 'assets/images/post/elephant.jpg',
    details: 'I might just be the strongest guy, who knows, ....',
    title: 'The big guy',
  ),
  Article(
    image: 'assets/images/post/Goat.jpg',
    details: 'There are several types of Goat breeds in ...',
    title: 'Stubborn me',
  ),
  Article(
    image: 'assets/images/post/parrot.jpg',
    details: 'Parrot seems to be the only animal to be a...',
    title: 'Let\'s Talk',
  ),
  Article(
    image: 'assets/images/post/pig.jpg',
    details: 'Pigs, Pigs ,Pigs, they could be the closest an....',
    title: 'Dirt, Dirt, Dirt',
  ),
  Article(
    image: 'assets/images/post/whale.jpg',
    details: 'The whale poses to be the largest mammal in th...',
    title: 'The Mammal at the top',
  ),
];
