import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/screens/code_pin.dart';

class ScanQRCode extends StatefulWidget {
  ScanQRCode({Key key}) : super(key: key);

  @override
  _ScanQRCodeState createState() => _ScanQRCodeState();
}

class _ScanQRCodeState extends State<ScanQRCode> {
  String qrCode = 'Données inconnues ';

  @override
  void initState() {
    super.initState();
    scanQrCode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                qrCode,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: kBlue3Color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '- - -',
              style: TextStyle(
                fontSize: 16,
                color: kBlue3Color,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 35,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kBtnBlueColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                onPressed: () {
                  print("Navigue to Sécurity screen for confirmation");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return CodePinScreen(
                            confirmation:
                                "Confirmation à la demande après scan de Qr Code");
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Continuer"),
                    SizedBox(width: 20),
                    Icon(Icons.login),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> scanQrCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Annuler',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Echec de recuperation de données';
    }
  }
}
