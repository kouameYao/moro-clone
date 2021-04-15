import 'package:flutter/material.dart';
import 'package:solution_moro/components/header_container.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/components/bottom_bar.dart';
import 'package:solution_moro/screens/art_board7.dart';

class ArtBoard6 extends StatefulWidget {
  @override
  _ArtBoard6State createState() => _ArtBoard6State();
}

class _ArtBoard6State extends State<ArtBoard6> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                  top: size.height / 6,
                  child: Container(
                    width: size.width * 0.7,
                    height: size.height / 5.5,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kOrangeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/img/logoMoroblanc.png",
                          width: 45,
                          height: 45,
                          color: kWhiteColor.withOpacity(0.7),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "XXXX XXXX XXXX XXXX",
                              style: TextStyle(
                                fontSize: size.width * 0.05,
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kBtnBlueColor)),
                  onPressed: () {
                    print('Navigue to ArtBoard 7');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return ArtBoard7();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Ajouter une nouvelle carte virtuelle",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    children: [
                      // Here the content of container
                    ],
                  ),
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
