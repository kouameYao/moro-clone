import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    @required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height / 3,
      decoration: BoxDecoration(
        color: kAuthBlueColor,
      ),
      child: Image.asset("assets/img/logoMoroblanc.png"),
    );
  }
}
