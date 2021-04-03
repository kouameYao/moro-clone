import 'package:flutter/material.dart';
import 'package:solution_moro/screens/auth.dart';

void main() {
  runApp(MoroApp());
}

class MoroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Authentification(),
    );
  }
}
