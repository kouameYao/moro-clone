import 'package:flutter/material.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/detail_carte.dart';
import 'package:solution_moro/screens/epargne5.dart';
import 'package:solution_moro/widgets/credit_card.dart';

class Epargne3 extends StatefulWidget {
  @override
  _Epargne3State createState() => _Epargne3State();
}

class _Epargne3State extends State<Epargne3> {
  List _colors = [
    kOrangeColor,
    kBlue3Color,
    kGreenColor,
    kBtnBgColor,
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
                    "Mes cartes virtuelles visa Moro Epargne",
                    style: TextStyle(
                      color: kBlue3Color,
                    ),
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
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      colorIndex++;
                      print(colorIndex);
                      if (colorIndex == _colors.length) {
                        colorIndex = 0;
                      }
                      // Implementer le composant Dissmissible ici. Puis exécuter une action de chaque cote
                      return GestureDetector(
                        onTap: () {
                          print("Navigue pour rechargement : Epargne 5");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Epargne5();
                              },
                            ),
                          );
                        },
                        onDoubleTap: () {
                          print("Navigue pour Detail carte");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return DetailCarte();
                              },
                            ),
                          );
                        },
                        child: CreditCard(
                          heightSize: size.height / 5.5,
                          colors: _colors,
                          colorIndex: colorIndex,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            BottomBar(),
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
