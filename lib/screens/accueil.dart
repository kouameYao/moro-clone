import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/widgets/bottom_bar.dart';
import 'package:solution_moro/widgets/bottom_item.dart';

class Accueil extends StatefulWidget {
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBtnBgColor,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: double.infinity,
                  height: size.height / 2.3,
                  decoration: BoxDecoration(
                    color: kAuthBlueColor,
                    borderRadius: BorderRadius.only(),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 0,
                  child: Image.asset(
                    "assets/img/logoMoroblanc.png",
                    width: 75,
                    height: 75,
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 15,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/img/userPhoto.png",
                      width: 75,
                      height: 75,
                    ),
                  ),
                ),
                Text(
                  "SOLDE MORO",
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(10),
                color: kWhiteColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomItem(
                    text: "Epargner",
                    icon: Icon(Icons.format_line_spacing_rounded),
                    onPress: () {
                      print("Go to Epargne screen");
                    },
                  ),
                  BottomItem(
                    text: "Mes cartes",
                    icon: Icon(Icons.credit_card),
                    onPress: () {
                      print("Go to Mes cartes screen");
                    },
                  ),
                  BottomItem(
                    text: "Send/receive",
                    icon: Icon(Icons.send_to_mobile),
                    onPress: () {
                      print("Go to Send screen");
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(),
                ),
                child: Center(
                    child: Column(
                  children: [
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.local_activity_outlined),
                        SizedBox(width: 10),
                        Text("Historiques des Activités")
                      ],
                    )
                  ],
                )),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(10),
                color: kWhiteColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
