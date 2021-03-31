import 'package:flutter/material.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

import '../constants.dart';

class AvantageContent extends StatelessWidget {
  const AvantageContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
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
              "Dès maintenant vous avez le contrôle de la gestion de votre argent , car vous visualisez en temps réel votre épargne en toute sécurité",
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
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFieldContainer(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: RaisedButton(
              color: kBtnBlueColor,
              onPressed: () {
                print('Demarrer button is pressed');
              },
              child: Text(
                "Demarrer",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
