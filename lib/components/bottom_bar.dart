import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/widgets/bottom_item.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: size.width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomItem(
            text: "Acheter",
            icon: Icon(Icons.shopping_cart_outlined),
            onPress: () {
              print("Go to Epargne screen");
            },
          ),
          BottomItem(
            text: "Recevoir",
            icon: Icon(Icons.receipt),
            onPress: () {
              print("Go to Mes cartes screen");
            },
          ),
          BottomItem(
            text: "transfert",
            icon: Icon(Icons.send_to_mobile),
            onPress: () {
              print("Go to Send screen");
            },
          ),
          BottomItem(
            text: "Configurer",
            icon: Icon(Icons.settings),
            onPress: () {
              print("Go to Send screen");
            },
          ),
        ],
      ),
    );
  }
}
