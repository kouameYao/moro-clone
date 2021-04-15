import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';

class AuthHeaderContainer extends StatelessWidget {
  const AuthHeaderContainer({
    @required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height / 2.5,
      decoration: BoxDecoration(
        color: kAuthBlueColor,
      ),
      child: Image.asset("assets/img/logoMoroblanc.png"),
    );
  }
}
