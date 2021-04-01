import 'package:flutter/material.dart';

import '../constants.dart';

class NewCardDetailItem extends StatelessWidget {
  const NewCardDetailItem({
    this.widget,
    this.text,
  });

  final Widget widget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget,
          SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
