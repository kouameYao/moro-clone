import 'package:flutter/material.dart';
import 'package:solution_moro/screens/confrimer_operation.dart';
import 'package:solution_moro/screens/accueil.dart';
import 'package:solution_moro/widgets/auth_header.dart';
import 'package:solution_moro/widgets/number_pad.dart';

import '../constants.dart';

class CodePinScreen extends StatefulWidget {
  const CodePinScreen({
    this.confirmation,
  });

  final String confirmation;

  @override
  _CodePinScreenState createState() => _CodePinScreenState();
}

class _CodePinScreenState extends State<CodePinScreen> {
  bool get isForConfirmation => widget.confirmation != null;

  String code = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          AuthHeaderContainer(size: size),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    print("Navigue to Dashbord screen");
                    isForConfirmation
                        ? Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return ConfirmerOperation();
                              },
                            ),
                          )
                        : Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Accueil1();
                              },
                            ),
                          );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Votre code pin",
                      style: TextStyle(
                        color: kTextBlueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
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
                    setState(() {
                      if (value != -1) {
                        if (code.length < 4) {
                          code = code + value.toString();
                        }
                      } else {
                        code = code.substring(0, code.length - 1);
                      }
                      print(code);
                    });
                  },
                ),
              ],
            ),
          ),
        ],
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
