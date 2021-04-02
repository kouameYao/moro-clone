import 'package:flutter/material.dart';

class CardElement extends StatelessWidget {
  const CardElement({
    @required this.size,
    this.leftComponent,
    this.rigthComponent,
  });

  final Size size;
  final Widget leftComponent;
  final Widget rigthComponent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.05,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          leftComponent,
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Center(
              child: rigthComponent,
            ),
          ),
        ],
      ),
    );
  }
}
