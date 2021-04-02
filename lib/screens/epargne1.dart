import 'package:flutter/material.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/components/custom_button.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/constants.dart';
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
                        style: TextStyle(
                          fontSize: 17,
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
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        // SizedBox(height: 8),
                        TextFieldContainer(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(29),
                            child: RaisedButton(
                              color: kBtnBgColor,
                              onPressed: () {
                                print('Demarrer button is pressed');
                              },
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
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                          text: "Valider",
                          onPress: () {
                            print('Validate button is pressed in epargne 1');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            BottomBar()
          ],
        ),
      ),
    );
  }
}
