import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tab1 extends StatelessWidget {
  Tab1({super.key});

  final List tabphotos = [
    'images/Kia1.jpg',
    'images/kia2.png',
    'images/mario.png',
    'images/mauren.jpg',
    'images/kia3.jpg',
    'images/kia4.jpg',
    'images/pic3.jpeg',
    'images/kia5.jpg',
    'images/kia6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: tabphotos.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (Context, index) {
          return Container(
            margin: EdgeInsets.only(right: 1.5, bottom: 1.5),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(tabphotos[index]), fit: BoxFit.fill)),
            child: index == 0
                ? FaIcon(
                    FontAwesomeIcons.thumbtack,
                    color: Colors.white,
                    size: 15,
                    textDirection: TextDirection.rtl,
                  )
                : Text(''),
          );
        });
  }
}
