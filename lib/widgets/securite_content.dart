import 'package:flutter/material.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

import '../constants.dart';

class SecuriteContent extends StatelessWidget {
  const SecuriteContent({
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
            "Sécurité",
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
              hintText: "**********",
              border: InputBorder.none,
            ),
          ),
        ),
        TextFieldContainer(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Confirmation",
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
                print('Validate button is pressed');
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
