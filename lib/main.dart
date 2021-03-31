import 'package:flutter/material.dart';
// import 'package:solution_moro/screens/accueil.dart';
import 'package:solution_moro/screens/epargne1.dart';
// import 'package:solution_moro/screens/inscription.dart';

void main() {
  runApp(MoroApp());
}

class MoroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moro',
      debugShowCheckedModeBanner: false,
      home: Epargne1(),
    );
  }
}
