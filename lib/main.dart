import 'package:flutter/material.dart';
import 'package:solution_moro/screens/inscription.dart';

void main() {
  runApp(MoroApp());
}

class MoroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Moro',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Inscription());
  }
}
