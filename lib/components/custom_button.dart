import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final Color color;
  final Icon icon;

  const CustomButton({
    this.text,
    this.onPress,
    this.color,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 35,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(width: 20),
            icon,
          ],
        ),
      ),
    );
  }
}

// ElevatedButton(
//               style: ElevatedButton.styleFrom(primary: kBlue3Color),
//               onPressed: () {},
//               child: Container(
//                 width: size.width * 0.8,
//                 child: Center(
//                   child: Text(
//                     "Envoyer",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
