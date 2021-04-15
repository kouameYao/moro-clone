import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';

import '../constants.dart';

class GenerateQrCode extends StatefulWidget {
  @override
  _GenerateQrCodeState createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  String montant = "";
  String qrData =
      "username : KOUAME Yao, email : yaojean0857@gmail.com, numéro : 0708335787 solde moro : 250000, montant à envoyer : ";
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  child: QrImage(
                    //plce where the QR Image will be shown
                    data: qrData,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Envoie d'argent par qrcode",
                  style: TextStyle(fontSize: 16.0),
                ),
                TextField(
                  controller: qrdataFeed,
                  decoration: InputDecoration(
                      hintText: "Entrer le montant d'envoie",
                      hintStyle: TextStyle(fontSize: 12)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: FlatButton(
                    padding: EdgeInsets.all(15.0),
                    onPressed: () async {
                      if (qrdataFeed.text.isEmpty) {
                        //a little validation for the textfield
                        setState(() {
                          qrData = "";
                        });
                      } else {
                        setState(() {
                          qrData = qrdataFeed.text;
                        });
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        "Valider",
                        style: TextStyle(
                            color: kBlue3Color, fontWeight: FontWeight.bold),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: kBlue3Color, width: 3.0),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  final qrdataFeed = TextEditingController();
}
