import 'package:flutter/material.dart';
import 'package:solution_moro/widgets/bottom_item.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
