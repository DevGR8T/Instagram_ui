import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  BubbleStories({super.key});

  final List<String> storiespics = [
    'images/richard_dan.jpg',
    'images/Pedreta.jpg',
    'images/mauren.jpg',
    'images/adams_raze.jpg',
    'images/princewill_dane.jpg',
    'images/ciara_luis.jpg',
  ];

  final List<String> usernames = [
    'Your story',
    'pedreta',
    'mauren',
    'adams_raze',
    'princewill',
    'ciara_luis'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: ListView.builder(
            itemCount: storiespics.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  index == 0
                      ? Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 7),
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('images/richard_dan.jpg'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 3,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue[400],
                                  radius: 10,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      : Container(
                          alignment: Alignment.center,
                          margin:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/instacolor.jpg'),
                                fit: BoxFit.fill),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: CircleAvatar(
                              radius: 28.5,
                              backgroundImage: AssetImage(storiespics[index]),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    usernames[index],
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: index == 0 ? Colors.black45 : Colors.black),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
