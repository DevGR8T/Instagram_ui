import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Post5 extends StatelessWidget {
  const Post5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ImageSlideshow(
          indicatorBackgroundColor: Colors.grey.withOpacity(0.6),
          indicatorColor: Colors.white,
          children: [
            Image.asset(
              'images/dr1.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/dr2.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/dr3.jpg',
              fit: BoxFit.fill,
            )
          ]),
    );
  }
}
