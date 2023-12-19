import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Post1 extends StatelessWidget {
  const Post1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ImageSlideshow(
          indicatorBackgroundColor: Colors.grey.withOpacity(0.6),
          indicatorColor: Colors.white,
          children: [
            Image.asset(
              'images/kim.png',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/kisses.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/elephant.jpg',
              fit: BoxFit.fill,
            )
          ]),
    );
  }
}
