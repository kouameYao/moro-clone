import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solution_moro/screens/auth.dart';

import 'constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MoroApp());
}

class MoroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBtnBgColor,
        primarySwatch: Colors.indigo,
      ),
      home: Authentification(),
    );
  }
}
