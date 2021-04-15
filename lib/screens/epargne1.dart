import 'package:flutter/material.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/components/custom_button.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/screens/epargne2.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

class Epargne1 extends StatefulWidget {
  @override
  _Epargne1State createState() => _Epargne1State();
}

class _Epargne1State extends State<Epargne1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              HeaderContainer(size: size),
              Positioned(
                left: 20,
                top: 10,
                child: Image.asset(
                  "assets/img/logoMoroblanc.png",
                  width: 75,
                  height: 75,
                ),
              ),
              Positioned(
                right: 15,
                top: 25,
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
                  child: Center(
                    child: Text(
                      "Veuillez recharger votre compte Moro afin de profitez des cartes virtuelles sécurisées pour vos épargnes",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kBtnBlueColor)),
                onPressed: () {
                  print('Validate button is pressed to confirm Sécurite');
                },
                child: Text(
                  "Approvisionner votre carte Moro",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
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
                    SizedBox(height: 10),
                    TextFieldContainer(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: RaisedButton(
                          color: kBtnBgColor,
                          onPressed: () {
                            print('Demarrer button is pressed');
                          },
                          child: Center(
                            child: ListTile(
                              title: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "15000",
                                  hintStyle: TextStyle(color: kWhiteColor),
                                  border: InputBorder.none,
                                ),
                              ),
                              trailing: Text(
                                "XOF",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 20,
                            width: 40,
                            child: Image.asset(
                              "assets/img/orangem.png",
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 40,
                            child: Image.asset(
                              "assets/img/mommtn.png",
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 40,
                            child: Image.asset(
                              "assets/img/moovm.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: "          Valider",
                      color: kBlue3Color,
                      icon: Icon(null),
                      onPress: () {
                        print('Validate button is pressed in epargne 1');
                        print("Navigue to Sécurity screen");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return Epargne2();
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
          BottomBar()
        ],
      ),
    );
  }
}
