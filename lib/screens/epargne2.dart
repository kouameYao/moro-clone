import 'package:flutter/material.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/accueil.dart';
import 'package:solution_moro/screens/accueil.dart';
import 'package:solution_moro/screens/art_board6.dart';
import 'package:solution_moro/widgets/bottom_item.dart';

class Epargne2 extends StatefulWidget {
  @override
  _Epargne2State createState() => _Epargne2State();
}

class _Epargne2State extends State<Epargne2> {
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
                  top: size.height / 7,
                  child: Text(
                    "SOLDE MORO",
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "15000 FCFA",
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
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
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kWhiteColor,
              ),
              child: Row(
                children: [
                  BottomItem(
                    text: "Achat de carte",
                    icon: Icon(Icons.payment),
                    onPress: () {
                      print("Navigue to ArtBoard screen");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return ArtBoard6();
                          },
                        ),
                      );
                    },
                  ),
                  BottomItem(
                    text: "Epargner",
                    icon: Icon(Icons.pending_actions),
                    onPress: () {
                      print("Navigue to ArtBoard screen");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            // return Accueil1();
                            return Accueil1();
                          },
                        ),
                      );
                    },
                  ),
                  BottomItem(
                    text: "Approvisioner"
                        "ma carte",
                    icon: Icon(Icons.send_to_mobile),
                    onPress: () {
                      print("Navigue to ArtBoard screen");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Accueil1();
                          },
                        ),
                      );
                    },
                  ),
                  BottomItem(
                    text: "Envoyer ou "
                        "recevoir",
                    icon: Icon(Icons.credit_card),
                    onPress: () {
                      print("Navigue to ArtBoard screen");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Accueil1();
                          },
                        ),
                      );
                    },
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
                  child: Column(
                    children: [
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_activity_outlined,
                              color: kBlue3Color),
                          SizedBox(width: 10),
                          Text(
                            "Historiques des Activités",
                            style: TextStyle(color: kBlue3Color),
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                        width: size.width * 0.85,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: kEpargneStory,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Achat de carte",
                              style: TextStyle(
                                fontSize: 12,
                                color: kWhiteColor,
                              ),
                            ),
                            Text(
                              "01/06/2021",
                              style: TextStyle(
                                fontSize: 12,
                                color: kWhiteColor,
                              ),
                            ),
                            Text(
                              "9\$",
                              style: TextStyle(
                                fontSize: 14,
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
