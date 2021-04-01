import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = kBluePrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: TextButton(
          // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          style: ButtonStyle(),
          // color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          )),
    );
  }
}
