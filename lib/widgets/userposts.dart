import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:instagram_ui/subclasses/post1.dart';
import 'package:instagram_ui/subclasses/post2.dart';
import 'package:instagram_ui/subclasses/post3.dart';
import 'package:instagram_ui/subclasses/post4.dart';
import 'package:instagram_ui/subclasses/post5.dart';

class UserPosts extends StatelessWidget {
  UserPosts({super.key});

  final List profilepics = [
    'images/Jenn.jpg',
    'images/pic2.jpg',
    'images/pic3.jpeg',
    'images/pic4.jpg',
    'images/pic5.jpg',
  ];

  final List profilenames = [
    'Pretty_Jenny',
    'James_Havard',
    'Tech_Sidney',
    'Laureta',
    'Dr.Matilda',
  ];

  final List location = [
    'Holland, Rotterdam',
    'Texas, Houston',
    'Johannesburg, SA',
    'Frankfurt, Germany',
    'India, Delhi',
  ];

  final List namedliked = [
    ' nationworld222',
    ' beckysplash',
    ' oscarstechnology',
    ' radiotechnicians826',
    ' wennyjohanes'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(profilepics[index]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                profilenames[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Icon(
                                Icons.verified,
                                color: Colors.blue,
                                size: 13,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(location[index],
                              style: TextStyle(
                                color: Colors.grey[500],
                              ))
                        ],
                      ),
                    ),
                    Spacer(),
                    FaIcon(
                      FontAwesomeIcons.ellipsis,
                      size: 23,
                    )
                  ],
                ),
              ),
              index == 0
                  ? Post1()
                  : index == 1
                      ? Post2()
                      : index == 2
                          ? Post3()
                          : index == 3
                              ? Post4()
                              : index == 4
                                  ? Post5()
                                  : Container(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: FaIcon(FontAwesomeIcons.comment),
                        ),
                        FaIcon(FontAwesomeIcons.paperPlane),
                        Spacer(),
                        FaIcon(FontAwesomeIcons.bookmark),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Liked by'),
                        Text(
                          namedliked[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(' and'),
                        Text(
                          ' others',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.3,
                    ),
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'instaglobe8',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                        TextSpan(
                            text:
                                ' Ministerial screening: My relations sold Computers(laptops and imacs) to increase their finances around the globe. They ensured to got western education....',
                            style: TextStyle(
                                color: Colors.black, fontSize: 13, height: 1.3))
                      ],
                    )),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'more',
                      style: TextStyle(color: Colors.black.withOpacity(0.4)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 4),
                      child: Text(
                        index == 0
                            ? 'View all 918 comments'
                            : index == 1
                                ? 'View all 30 comments'
                                : index == 2
                                    ? 'View all 700 comments'
                                    : index == 3
                                        ? 'View all 283 comments'
                                        : index == 4
                                            ? 'View all 930 comments'
                                            : '',
                        style: TextStyle(color: Colors.black.withOpacity(0.4)),
                      ),
                    ),
                    Text(
                      '1 DAY AGO',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.4), fontSize: 13),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
