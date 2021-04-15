import 'package:flutter/material.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/code_pin.dart';

class Accueil2 extends StatefulWidget {
  @override
  _Accueil2State createState() => _Accueil2State();
}

class _Accueil2State extends State<Accueil2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                  top: size.height / 6,
                  child: Container(
                    width: size.width * 0.7,
                    height: size.height / 5.5,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kOrangeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Le qr code et le nom ci-dessous doit être générer automatiquement
                        Image.asset(
                          "assets/icons/041-qr-code.png",
                          width: 70,
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.person,
                                size: 35,
                                color: kWhiteColor,
                              ),
                              Text(
                                "Esther Kouamé",
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: size.width * 0.8,
                        height: 40,
                        decoration: BoxDecoration(
                            color: kBtnBgColor,
                            border: Border.all(width: 1, color: kWhiteColor),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Montant",
                                      hintStyle: TextStyle(
                                        color: kWhiteColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "XOF",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CodePinScreen(
                                  confirmation:
                                      "Reception qr code 2 demande confirmation",
                                );
                              },
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              kBlueSeconaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        child: Container(
                          width: size.width * 0.7,
                          child: Center(
                            child: Text(
                              "Envoyer",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
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
}
