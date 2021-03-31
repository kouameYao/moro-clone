import 'package:flutter/material.dart';

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
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              icon,
              SizedBox(height: 2),
              Text(
                text,
                style: TextStyle(
                  fontSize: 11,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
