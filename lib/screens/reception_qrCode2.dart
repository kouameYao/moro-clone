import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/code_pin.dart';

class ReceptionQrCode2 extends StatefulWidget {
  @override
  _ReceptionQrCode2State createState() => _ReceptionQrCode2State();
}

class _ReceptionQrCode2State extends State<ReceptionQrCode2> {
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
                  "Envoyer à Abou Diop",
                  style: TextStyle(
                    color: kBlue3Color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(5),
              width: size.width * 0.9,
              height: 30,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  border: Border.all(width: 1, color: kWhiteColor),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Montant",
                          labelStyle: TextStyle(
                            color: kBlue3Color,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("XOF"),
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
                backgroundColor:
                    MaterialStateProperty.all<Color>(kBlueSeconaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: Container(
                width: size.width * 0.8,
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
            Expanded(child: Container()),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
