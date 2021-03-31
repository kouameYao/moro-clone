import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';

class Accueil extends StatefulWidget {
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
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
                  Actions(
                    text: "Epargner",
                    icon: Icon(Icons.format_line_spacing_rounded),
                    onPress: () {
                      print("Go to Epargne screen");
                    },
                  ),
                  Actions(
                    text: "Mes cartes",
                    icon: Icon(Icons.credit_card),
                    onPress: () {
                      print("Go to Mes cartes screen");
                    },
                  ),
                  Actions(
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
                  Actions(
                    text: "Acheter",
                    icon: Icon(Icons.shopping_cart_outlined),
                    onPress: () {
                      print("Go to Epargne screen");
                    },
                  ),
                  Actions(
                    text: "Recevoir",
                    icon: Icon(Icons.receipt),
                    onPress: () {
                      print("Go to Mes cartes screen");
                    },
                  ),
                  Actions(
                    text: "transfert",
                    icon: Icon(Icons.send_to_mobile),
                    onPress: () {
                      print("Go to Send screen");
                    },
                  ),
                  Actions(
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

class Actions extends StatelessWidget {
  const Actions({
    this.text,
    this.icon,
    this.onPress,
  });

  final String text;
  final Icon icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              icon,
              SizedBox(height: 2),
              Text(
                text,
                style: TextStyle(
                  fontSize: 11,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
