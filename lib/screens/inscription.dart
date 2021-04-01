import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/widgets/auth_header.dart';
import 'package:solution_moro/widgets/number_pad.dart';
// import 'package:solution_moro/widgets/text_field_container.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  String code = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBtnBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(size: size),
            // InscriptionContent(),
            // SecuriteContent()
            // AvantageContent()
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 30),
                  child: Center(
                    child: Text(
                      'Votre code pin',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildCodeNumberBox(
                      code.length > 0 ? code.substring(0, 1) : "",
                    ),
                    buildCodeNumberBox(
                      code.length > 1 ? code.substring(1, 2) : "",
                    ),
                    buildCodeNumberBox(
                      code.length > 2 ? code.substring(2, 3) : "",
                    ),
                    buildCodeNumberBox(
                      code.length > 3 ? code.substring(3, 4) : "",
                    ),
                  ],
                ),
                NumberPad(
                  onNumberSelected: (value) {
                    print(value);
                    setState(
                      () {
                        if (value != -1) {
                          if (code.length < 4) {
                            code = code + value.toString();
                          }
                        } else {
                          code = code.substring(0, code.length - 1);
                        }
                        print(code);
                      },
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8, bottom: 10),
      child: SizedBox(
        width: 15,
        height: 15,
        child: Container(
          decoration: BoxDecoration(
            color: kWhiteColor,
            border: codeNumber != ""
                ? Border.all(width: 10, color: kBluePrimaryColor)
                : null,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Center(
            child: Text(
              codeNumber,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F1F1F),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
