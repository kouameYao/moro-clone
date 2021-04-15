import 'package:flutter/material.dart';
import 'package:solution_moro/components/custom_button.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/envoi_reception.dart';

class ConfirmerOperation extends StatefulWidget {
  @override
  _ConfirmerOperationState createState() => _ConfirmerOperationState();
}

class _ConfirmerOperationState extends State<ConfirmerOperation> {
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
                  top: 100,
                  child: Container(
                    width: size.width * 0.8,
                    height: size.height / 5.5,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kOrangeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Image.asset(
                              "assets/icons/support.png",
                              width: 50,
                              height: 50,
                              // color: kBlue1Color,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Félicitation !",
                            style: TextStyle(
                              color: kBlue3Color,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text(
                            "Vous avez envoyer avec succès !",
                            style: TextStyle(
                              color: kBlue3Color,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text(
                            "à Esther Kouamé",
                            style: TextStyle(
                              color: kBlue3Color,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        CustomButton(
                          text: "             Envoyer ou recevoir ?",
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return EnvoiReception();
                                },
                              ),
                            );
                          },
                          color: kBlue3Color,
                          icon: Icon(null),
                        )
                      ],
                    ),
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
