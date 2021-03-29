import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/widgets/rounded_button%20copy.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

class Inscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 3,
              decoration: BoxDecoration(
                color: kAuthBlueColor,
              ),
              child: Image.asset("assets/img/logoMoroblanc.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Inscription",
                style: TextStyle(
                  color: kTextBlueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            TextFieldContainer(
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "N° Telephone", border: InputBorder.none),
                ),
              ),
            ),
            TextFieldContainer(
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Adress email", border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldContainer(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: RaisedButton(
                  color: kBlue2Color,
                  onPressed: () {
                    print('Validate button is pressed');
                  },
                  child: Text(
                    "Valider",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
