import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

class ReceptionScren extends StatefulWidget {
  @override
  _ReceptionScrenState createState() => _ReceptionScrenState();
}

class _ReceptionScrenState extends State<ReceptionScren> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: double.infinity,
                  height: size.height / 2.3,
                  decoration: BoxDecoration(
                    color: kAuthBlueColor,
                    borderRadius: BorderRadius.only(),
                  ),
                ),
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
                  top: 100,
                  child: Container(
                    width: size.width * 0.8,
                    height: size.height / 5.5,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kOrangeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/icons/041-qr-code.png",
                          width: 50,
                          height: 50,
                          // color: kBlue1Color,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.person,
                              color: kWhiteColor,
                              size: 30,
                            ),
                            Text(
                              'Esther Kouamé',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Image.asset(
                              "assets/icons/support.png",
                              width: 50,
                              height: 50,
                              // color: kBlue1Color,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Félicitation !",
                            style: TextStyle(
                              color: kBlue3Color,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text(
                            "Vous avez envoyer avec succès !",
                            style: TextStyle(
                              color: kBlue3Color,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text(
                            "à Esther Kouamé",
                            style: TextStyle(
                              color: kBlue3Color,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextFieldContainer(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(29),
                            child: RaisedButton(
                              color: kBlue3Color,
                              onPressed: () {
                                print(
                                    'Validate button is pressed in epargne 1');
                              },
                              child: Text(
                                "Valider",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kWhiteColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Actions(
                    text: "Acheter",
                    icon: Icon(Icons.shopping_cart_outlined),
                    onPress: () {
                      print("Go to Epargne screen");
                    },
                  ),
                  Actions(
                    text: "Recevoir",
                    icon: Icon(Icons.receipt),
                    onPress: () {
                      print("Go to Mes cartes screen");
                    },
                  ),
                  Actions(
                    text: "transfert",
                    icon: Icon(Icons.send_to_mobile),
                    onPress: () {
                      print("Go to Send screen");
                    },
                  ),
                  Actions(
                    text: "Configurer",
                    icon: Icon(Icons.settings),
                    onPress: () {
                      print("Go to Send screen");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({
    this.text,
    this.icon,
    this.onPress,
  });

  final String text;
  final Icon icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              icon,
              SizedBox(height: 2),
              Text(
                text,
                style: TextStyle(
                  fontSize: 11,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}