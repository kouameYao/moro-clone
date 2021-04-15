import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/reception_qrCode2.dart';

class ReceptionQrCode1 extends StatefulWidget {
  @override
  _ReceptionQrCode1State createState() => _ReceptionQrCode1State();
}

class _ReceptionQrCode1State extends State<ReceptionQrCode1> {
  var _repertoire = [
    {"nom": "Aymard S. Diom"},
    {"nom": "Jean J. Kouamé"},
    {"nom": "Ingrid E. Sabine"},
    {"nom": "Amanda C. Moyenga"},
    {"nom": "Diomandé Souley."},
    {"nom": "Jean J. Kouamé"},
    {"nom": "Ingrid E. Sabine"},
    {"nom": "Amanda C. Moyenga"},
    {"nom": "Diomandé Souley."},
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Recherche",
                    labelStyle: TextStyle(
                      color: kBlue3Color,
                    )),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: size.height * 0.6,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                      child: ListView.separated(
                    itemCount: _repertoire.length,
                    separatorBuilder: (_, __) => Divider(height: 0.5),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          print("Go to Reception qrcode 2 Screen");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return ReceptionQrCode2();
                              },
                            ),
                          );
                        },
                        child: ListTile(
                          title: Center(child: Text(_repertoire[index]['nom'])),
                        ),
                      );
                    },
                  )),
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
