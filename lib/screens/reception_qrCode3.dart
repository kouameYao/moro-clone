import 'package:flutter/material.dart';
import 'package:solution_moro/components/custom_button.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/envoi_reception.dart';

class ReceptionQrCode3 extends StatefulWidget {
  @override
  _ReceptionQrCode3State createState() => _ReceptionQrCode3State();
}

class _ReceptionQrCode3State extends State<ReceptionQrCode3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBtnBgColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/img/logoMoroblanc.png",
                    width: 75,
                    height: 75,
                  ),
                  Icon(
                    Icons.message_outlined,
                    color: kBlue3Color,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/img/userPhoto.png",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              width: size.width * 0.8,
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kWhiteColor),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Résultats",
                  style: TextStyle(
                    color: kBlue3Color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Column(
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
                    "à Abou Diop",
                    style: TextStyle(
                      color: kBlue3Color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            CustomButton(
              text: "            Envoyer ou Recevoir ?",
              color: kBlue3Color,
              icon: Icon(null),
              onPress: () {
                print("Envoyer Recevoir in Sammary screen is pressed");
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
            Expanded(child: Container()),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
