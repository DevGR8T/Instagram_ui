import 'package:flutter/material.dart';

class ProfileStories extends StatelessWidget {
  ProfileStories({super.key});

  final List storiespics = [
    'images/fall.jpg',
    'images/outfit.jpg',
    'images/newsletter.jpg',
    'images/links.jpg',
    'images/reading.jpg',
    'images/travelling.jpeg',
  ];

  final List storiestext = [
    ' fall',
    ' Recent outf...',
    ' Newsletter',
    ' links',
    ' Reading book',
    ' Travelling'
  ];

  final List flags = [
    'images/flag.jpg',
    '',
    '',
    'images/barchart.png',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView.builder(
        itemCount: storiespics.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 6),
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 2)),
                child: CircleAvatar(
                    backgroundImage: AssetImage(storiespics[index]),
                    radius: 29),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  children: [
                    index == 0 || index == 3
                        ? SizedBox(
                            height: 18,
                            width: 15,
                            child: Image.asset(
                              flags[index],
                            ),
                          )
                        : Text(''),
                    Text(
                      storiestext[index],
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
