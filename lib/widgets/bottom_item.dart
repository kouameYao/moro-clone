import 'package:flutter/material.dart';
// import 'package:solution_moro/constants.dart';

class BottomItem extends StatelessWidget {
  const BottomItem({
    this.text,
    this.icon,
    this.onPress,
  });

  final String text;
  final Icon icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        // splashColor: kBlue3Color,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              icon,
              SizedBox(height: 2),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
