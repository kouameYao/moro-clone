import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/widgets/bottom_bar.dart';
import 'package:solution_moro/widgets/card_element.dart';

class Epargne3 extends StatefulWidget {
  @override
  _Epargne3State createState() => _Epargne3State();
}

class _Epargne3State extends State<Epargne3> {
  List _colors = [
    kOrangeColor,
    kBlue3Color,
    kGreenColor,
  ];
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
                  height: size.height / 2.6,
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
                  6,
                  kBlue3Color.withOpacity(0.5),
                  Colors.grey,
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
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
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
                    "Mes carte virtuelle visa Moro Epargne",
                    style: TextStyle(color: kBlue3Color),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: size.width * 0.7,
                              height: size.height / 5.5,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                color: _colors[index],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      }),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kWhiteColor,
              ),
              child: BottomBar(),
            ),
          ],
        ),
      ),
    );
  }

  Positioned positionedCard(
      Size size, double bottom, int divider, Color cardColor, Color imgColor) {
    return Positioned(
      bottom: bottom,
      child: Container(
        width: size.width * 0.7,
        height: size.height / divider,
        padding: EdgeInsets.all(10),
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
              width: 45,
              height: 45,
              color: imgColor,
            ),
            Expanded(
              child: Center(
                child: Text(
                  "XXXX XXXX XXXX XXXX",
                  style: TextStyle(
                    fontSize: size.width * 0.05,
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
