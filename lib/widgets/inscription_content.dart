import 'package:flutter/material.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

import '../constants.dart';

class InscriptionContent extends StatelessWidget {
  const InscriptionContent({
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
            "Inscription",
            style: TextStyle(
              color: kTextBlueColor,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        TextFieldContainer(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "N° Telephone",
              border: InputBorder.none,
            ),
          ),
        ),
        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Adress email",
              border: InputBorder.none,
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
                print('Validate button is pressed to confirm Sécurite');
              },
              child: Text(
                "Valider",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
