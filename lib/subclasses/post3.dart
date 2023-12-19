import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Post3 extends StatelessWidget {
  const Post3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ImageSlideshow(
          indicatorBackgroundColor: Colors.grey.withOpacity(0.6),
          indicatorColor: Colors.white,
          children: [
            Image.asset(
              'images/tech1.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/tech2.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/tech3.jpg',
              fit: BoxFit.fill,
            )
          ]),
    );
  }
}
