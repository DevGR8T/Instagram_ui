import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/Pages/activitypage.dart';
import 'package:instagram_ui/Pages/homepage.dart';
import 'package:instagram_ui/Pages/profilepage.dart';
import 'package:instagram_ui/Pages/searchpage.dart';
import 'package:instagram_ui/Pages/videopage.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selecteditem = 0;
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    ActivityPage(),
    VideoPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selecteditem],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.grey[850],
          currentIndex: selecteditem,
          onTap: (int Index) {
            setState(() {
              selecteditem = Index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.home,
                  size: 22,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.search,
                  size: 22,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.plusSquare,
                  size: 22,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.playCircle,
                  size: 22,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.userCircle,
                  size: 22,
                ),
                label: ''),
          ]),
    );
  }
}
