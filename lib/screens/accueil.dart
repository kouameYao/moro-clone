import 'package:flutter/material.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/envoi_reception.dart';
import 'package:solution_moro/screens/epargne1.dart';
import 'package:solution_moro/screens/epargne3.dart';
import 'package:solution_moro/widgets/bottom_item.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                  top: 20,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      "assets/img/userPhoto.png",
                      width: 50,
                      height: 50,
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
                      "0 FCFA",
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
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                    text: "Epargner",
                    icon: Icon(Icons.format_line_spacing_rounded),
                    onPress: () {
                      print("Go to Epargne screen");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Epargne1();
                          },
                        ),
                      );
                    },
                  ),
                  BottomItem(
                    text: "Mes cartes",
                    icon: Icon(Icons.credit_card),
                    onPress: () {
                      print("Go to Mes cartes screen");
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
                  BottomItem(
                    text: "Send/receive",
                    icon: Icon(Icons.send_to_mobile),
                    onPress: () {
                      print("Go to Send screen");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return EnvoiReception();
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
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: kWhiteColor,
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
