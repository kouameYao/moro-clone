import 'package:flutter/material.dart';
import 'package:solution_moro/widgets/auth_header.dart';
import 'package:solution_moro/screens/inscription_content.dart';

class Authentification extends StatefulWidget {
  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthHeaderContainer(size: size),
            Container(
              width: double.infinity,
              child: InscriptionContent(),
            ),
          ],
        ),
      ),
    );
  }
}
