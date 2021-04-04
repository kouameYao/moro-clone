import 'package:flutter/material.dart';
import 'package:solution_moro/widgets/auth_header.dart';
import 'package:solution_moro/screens/avantage_content.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

import '../constants.dart';

class SecuriteContent extends StatelessWidget {
  const SecuriteContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBtnBgColor,
      body: Column(
        children: [
          AuthHeaderContainer(size: size),
          Container(
            width: double.infinity,
            height: size.height - size.height / 2.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 40),
                  child: Text(
                    "Sécurité",
                    style: TextStyle(
                      color: kTextBlueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                TextFieldContainer(
                  color: kWhiteColor,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "************",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFieldContainer(
                  color: kWhiteColor,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Confirmation",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                      print("Navigue to Sécurity screen");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return AvantageContent();
                      }));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Valider"),
                        SizedBox(width: 20),
                        Icon(Icons.login),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
