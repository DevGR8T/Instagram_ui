import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  const Tab3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (Context, index) {
          return Container();
        });
  }
}
