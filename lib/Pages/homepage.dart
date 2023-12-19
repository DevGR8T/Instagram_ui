import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/bubblestories.dart';
import 'package:instagram_ui/widgets/userposts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SizedBox(
          height: 50,
          child: Row(children: [
            Image.asset(
              'images/instaletter.png',
              fit: BoxFit.fill,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey[800],
              size: 23,
            )
          ]),
        ),
        actions: [
          Stack(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Icon(
                        Icons.favorite_outline_outlined,
                        color: Colors.black,
                        size: 26,
                      ),
                      Positioned(
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.red[800],
                            radius: 4,
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 800,
                          child: Image.asset(
                            'images/message.png',
                          ),
                          width: 23,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 9,
                left: 57,
                child: CircleAvatar(
                  backgroundColor: Colors.red[800],
                  radius: 8,
                  child: Text(
                    '1',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [BubbleStories(), UserPosts()],
      ),
    );
  }
}
