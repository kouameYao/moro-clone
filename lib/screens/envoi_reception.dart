import 'package:flutter/material.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/reception_qrCode1.dart';
import 'package:solution_moro/screens/scan_qrCode.dart';

class EnvoiReception extends StatefulWidget {
  @override
  _EnvoiReceptionState createState() => _EnvoiReceptionState();
}

class _EnvoiReceptionState extends State<EnvoiReception> {
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
                  top: 120,
                  child: Container(
                    width: size.width * 0.6,
                    height: size.height / 7,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kOrangeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "SOLDE MORO",
                              style: TextStyle(
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "1 125 FCFA",
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
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OperationItem(
                  size: size,
                  text: "via votre lien",
                  icon: Icon(Icons.logout),
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return ReceptionQrCode1();
                        },
                      ),
                    );
                  },
                ),
                OperationItem(
                  size: size,
                  text: "Qr code",
                  icon: Icon(Icons.qr_code),
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return ScanQrCode();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OperationItem(
                  size: size,
                  text: "via votre lien",
                  icon: Icon(Icons.login),
                  press: () {},
                ),
                OperationItem(
                  size: size,
                  text: "Qr code",
                  icon: Icon(Icons.qr_code),
                  press: () {
                    print("Qr code pressed");
                  },
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: 150,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: null),
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

class OperationItem extends StatelessWidget {
  const OperationItem({
    @required this.size,
    this.icon,
    this.text,
    this.press,
  });

  final Size size;
  final Icon icon;
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.all(8),
        width: size.width * 0.4,
        height: 40,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [icon, SizedBox(width: 8), Text(text)],
            ),
          ),
        ),
      ),
    );
  }
}
