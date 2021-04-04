import 'package:flutter/material.dart';
import 'package:solution_moro/screens/code_pin.dart';
import 'package:solution_moro/widgets/auth_header.dart';

import '../constants.dart';

class AvantageContent extends StatelessWidget {
  const AvantageContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBtnBgColor,
      body: Column(
        children: [
          AuthHeaderContainer(size: size),
          Container(
            width: double.infinity,
            height: size.height - size.height / 2.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Nos Avantages",
                    style: TextStyle(
                      color: kTextBlueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Center(
                    child: Text(
                      "Dès maintenant vous avez le contrôle de la gestion de votre argent , car vous visualisez en temps réel votre épargne en toute sécurité.",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Envie de commencer ?",
                      style: TextStyle(
                        color: kRedColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 35,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kBtnBlueColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      print("Navigue to Sécurity screen");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return CodePinScreen();
                          },
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Démarrer"),
                        SizedBox(width: 20),
                        Icon(Icons.login),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
