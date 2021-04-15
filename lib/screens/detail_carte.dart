import 'package:flutter/material.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/components/new_card_detail_item.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/epargne3.dart';
import 'package:solution_moro/widgets/card_element.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

class DetailCarte extends StatefulWidget {
  @override
  _DetailCarteState createState() => _DetailCarteState();
}

class _DetailCarteState extends State<DetailCarte> {
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    print('Detail de la carte is pressed');
                  },
                  child: Text(
                    "Détails de la carte",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kBlueSeconaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    children: [
                      NewCardDetailItem(
                        widget: Icon(
                          Icons.person,
                          size: 30,
                          color: kWhiteColor,
                        ),
                        text: "Dion Stéphane Aymard",
                      ),
                      NewCardDetailItem(
                        widget: Image.asset(
                          "assets/icons/cardrapido.png",
                          width: 30,
                          height: 30,
                        ),
                        text: "Carte Moro Rapido",
                      ),
                      NewCardDetailItem(
                        widget: Text(
                          "6",
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        text: "Mois de validité",
                      ),
                      TextFieldContainer(
                        color: kWhiteColor,
                        child: TextButton(
                          onPressed: () {
                            print('Aller à mon bedou is press');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Epargne3();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Aller à Mon Bedou",
                            style: TextStyle(
                              color: kBlueSeconaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
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
