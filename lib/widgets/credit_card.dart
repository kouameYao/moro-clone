import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/widgets/card_element.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key key,
    @required this.size,
    @required List colors,
    @required this.colorIndex,
  })  : _colors = colors,
        super(key: key);

  final Size size;
  final List _colors;
  final int colorIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.width * 0.7,
          height: size.height / 5.5,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            color: _colors[colorIndex],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardElement(
                size: size,
                leftComponent: Image.asset(
                  "assets/img/logoMoroblanc.png",
                  color: kWhiteColor.withOpacity(0.7),
                  width: 50,
                  height: 50,
                ),
                rigthComponent: Text(
                  "XXXX XXXX XXXX 2017",
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 12,
                  ),
                ),
              ),
              CardElement(
                size: size,
                leftComponent: Text(
                  "Solde : ",
                  style: TextStyle(
                    color: kWhiteColor,
                  ),
                ),
                rigthComponent: Text(
                  "25,03\$",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Dion S. Aymard ",
                      style: TextStyle(
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  Text(
                    "12/2021",
                    style: TextStyle(
                      color: kWhiteColor,
                      // fontSize: 0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
