import 'package:flutter/material.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/screens/accueil2.dart';

class ScanQrCode extends StatefulWidget {
  @override
  _ScanQrCodeState createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBtnBgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Image.asset(
                    "assets/img/logoMoroblanc.png",
                    width: 75,
                    height: 75,
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    "assets/img/userPhoto.png",
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              width: size.width,
              height: size.height / 2.2,
              decoration: BoxDecoration(
                color: kQrContainer,
              ),
              child: Image.asset(
                "assets/icons/041-qr-code.png",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                print('qr code scanned');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return Accueil2();
                    },
                  ),
                );
              },
              splashColor: kBlue3Color,
              borderRadius: BorderRadius.circular(40),
              child: Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: kRedColor,
                  borderRadius: BorderRadius.circular(50),
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
