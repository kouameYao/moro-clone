import 'package:flutter/material.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPress;

  const CustomButton({
    this.text,
    this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: RaisedButton(
          color: kBlue3Color,
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}

// ElevatedButton(
//               style: ElevatedButton.styleFrom(primary: kBlue3Color),
//               onPressed: () {},
//               child: Container(
//                 width: size.width * 0.8,
//                 child: Center(
//                   child: Text(
//                     "Envoyer",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
