import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/widgets/profpagestories.dart';
import 'package:instagram_ui/widgets/tab1.dart';
import 'package:instagram_ui/widgets/tab2.dart';
import 'package:instagram_ui/widgets/tab3.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              SizedBox(
                width: 90,
              ),
              Text(
                'KiaraFord',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 3),
              Icon(
                Icons.verified,
                size: 13,
                color: Colors.blue,
              ),
              Spacer(),
              FaIcon(
                FontAwesomeIcons.bell,
                size: 23,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: FaIcon(
                  FontAwesomeIcons.ellipsisH,
                  size: 23,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('images/instacolor.jpg'),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 42,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/Pedreta.jpg'),
                        radius: 40.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '1,955',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'Posts',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              '169K',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '2,006',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text('Following',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kiara Rutherford',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                        'Seeking transcendence via fashion, music, self-care, daydreams & pisces memes'),
                    Text('writer | brand consultant 📍 LDN'),
                    Row(
                      children: [
                        Text('👇 subscribe to my newsletter'),
                        Text(
                          '#fwdjoy',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Text(
                      'fwdjoy.com',
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            width: 100,
                            padding:
                                EdgeInsets.only(left: 10, top: 3, bottom: 3),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: [
                                Text(
                                  'Following',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.keyboard_arrow_down_rounded)
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            alignment: Alignment.center,
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'Message',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'Email',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          alignment: Alignment.center,
                          height: 30,
                          width: 40,
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.person_add_outlined),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ProfileStories()
                  ],
                )),
            TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.grey,
                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.grid_on_sharp,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.video_call_outlined,
                    size: 35,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.person,
                    size: 33,
                  )),
                ]),
            Expanded(child: TabBarView(children: [Tab1(), Tab2(), Tab3()]))
          ],
        ),
      ),
    );
  }
}
