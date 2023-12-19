import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Post2 extends StatelessWidget {
  const Post2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ImageSlideshow(
          indicatorBackgroundColor: Colors.grey.withOpacity(0.6),
          indicatorColor: Colors.white,
          children: [
            Image.asset(
              'images/jaguar2.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/lambo.jpg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'images/porch.jpg',
              fit: BoxFit.fill,
            )
          ]),
    );
  }
}
