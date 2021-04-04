import 'package:flutter/material.dart';
import 'package:solution_moro/components/custom_button.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/screens/epargne3.dart';

class Epargne5 extends StatefulWidget {
  @override
  _Epargne5State createState() => _Epargne5State();
}

class _Epargne5State extends State<Epargne5> {
  List _colors = [
    kOrangeColor,
    kBlue3Color,
    kGreenColor,
  ];

  int colorIndex = -1;

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
                HeaderContainer(size: size),
                Positioned(
                  left: 20,
                  top: 0,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/img/logoMoroblanc.png",
                        width: 75,
                        height: 75,
                      ),
                    ],
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
                Positioned(
                  top: size.height / 8,
                  child: Text(
                    "SOLDE MORO",
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "12 225 FCFA",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      "assets/img/Flag_of_Côte_d'Ivoire.png",
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                positionedCard(
                  size,
                  0,
                  7,
                  kOrangeColor,
                  kWhiteColor.withOpacity(0.6),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              width: size.width,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kWhiteColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.local_activity_outlined, color: kBlue3Color),
                  SizedBox(width: 10),
                  Text(
                    "Rechargement de la carte",
                    style: TextStyle(
                      color: kBlue3Color,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: double.infinity,
                  height: size.height * 0.45,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Container(
                                width: size.width * 0.6,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: kBtnBgColor,
                                  borderRadius: BorderRadius.circular(29),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextField(
                                    // textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: "Montant à transferer",
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: kWhiteColor,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "XOF",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        CustomButton(
                          text: "          Valider",
                          color: kBlue3Color,
                          icon: Icon(null),
                          onPress: () {
                            print('Validate button is pressed in epargne 3');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Epargne3();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // BottomBar(),
          ],
        ),
      ),
    );
  }

  Positioned positionedCard(
    Size size,
    double bottom,
    int divider,
    Color cardColor,
    Color imgColor,
  ) {
    return Positioned(
      bottom: bottom,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset("assets/icons/006-money bagblanc.png"),
          ),
          Container(
            width: size.width * 0.6,
            height: size.height / divider,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/logoMoroblanc.png",
                  width: 40,
                  height: 40,
                  color: imgColor,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "XXXX XXXX XXXX XXXX",
                      style: TextStyle(
                        fontSize: size.width * 0.04,
                        color: kWhiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
