import 'package:flutter/material.dart';
import 'package:solution_moro/screens/pick_user.dart';

void main() {
  runApp(MoroApp());
}

class MoroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moro',
      debugShowCheckedModeBanner: false,
      home: PickUserScreen(),
    );
  }
}
