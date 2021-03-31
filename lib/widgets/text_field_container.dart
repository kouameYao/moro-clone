import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      height: 45,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}