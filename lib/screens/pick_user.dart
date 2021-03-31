import 'package:flutter/material.dart';
import 'package:solution_moro/components/custom_button.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/widgets/bottom_item.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

class PickUserScreen extends StatefulWidget {
  @override
  _PickUserScreenState createState() => _PickUserScreenState();
}

class _PickUserScreenState extends State<PickUserScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/img/logoMoroblanc.png",
                    width: 75,
                    height: 75,
                  ),
                  Icon(
                    Icons.message_outlined,
                    color: kBlue3Color,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/img/userPhoto.png",
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 40),
            //   decoration: BoxDecoration(
            //     shape: BoxShape.rectangle,
            //     // Add border of container here.
            //   ),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       labelText: "Recherche",
            //       border: InputBorder.none,
            //     ),
            //   ),
            // ),
            // Expanded(
            //   child: SingleChildScrollView(
            //     child: Container(
            //       width: double.infinity,
            //       height: size.height * 0.6,
            //       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            //       decoration: BoxDecoration(
            //         color: kWhiteColor,
            //         borderRadius: BorderRadius.circular(8),
            //       ),
            //       child: Center(child: null),
            //     ),
            //   ),
            // ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: size.height * 0.6,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    // color: kWhiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        // TextFieldContainer(
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(29),
                        //     child: RaisedButton(
                        //       color: kBlue3Color,
                        //       onPressed: () {
                        //         print(
                        //             'Validate button is pressed in epargne 1');
                        //       },
                        //       child: Text(
                        //         "Envoyer",
                        //         style: TextStyle(
                        //             color: Colors.white, fontSize: 18),
                        //       ),
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
