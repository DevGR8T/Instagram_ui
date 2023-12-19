import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final List searchimages = [
    'images/grid1.jpg',
    'images/grid2.jpg',
    'images/grid3.jpg',
    'images/grid4.jpg',
    'images/grid5.jpg',
    'images/grid6.jpg',
    'images/grid7.jpg',
    'images/grid8.jpg',
    'images/grid9.jpg',
    'images/grid10.jpg',
    'images/grid11.jpg',
    'images/grid12.jpg',
    'images/grid13.jpg',
    'images/grid14.jpg',
    'images/grid15.jpg',
    'images/grid16.jpg',
    'images/grid17.jpg',
    'images/grid18.jpg',
    'images/grid19.jpg',
    'images/grid20.jpg',
    'images/grid21.jpeg',
    'images/grid22.png',
    'images/grid23.jpg',
    'images/grid24.jpg',
    'images/grid25.jpg',
    'images/grid26.jpg',
    'images/grid27.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), border: Border.all()),
            child: TextField(
              cursorColor: Colors.black,
              cursorWidth: 1.0,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey[600])),
            )),
      ),
      body: GridView.builder(
          itemCount: 27,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(1),
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(searchimages[index]),
                      fit: BoxFit.fill)),
            );
          }),
    );
  }
}
