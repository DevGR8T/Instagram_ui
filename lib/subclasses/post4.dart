import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Post4 extends StatelessWidget {
  const Post4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ImageSlideshow(
          indicatorBackgroundColor: Colors.grey.withOpacity(0.6),
          indicatorColor: Colors.white,
          children: [
            Image.asset(
              'images/cloth1.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/cloth2.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/cloth3.jpg',
              fit: BoxFit.fill,
            )
          ]),
    );
  }
}
