import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'ACTIVITY',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    ));
  }
}
