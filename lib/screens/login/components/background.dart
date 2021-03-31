import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      color: kBackgroundColor,
      // child: Stack(
      //   alignment: Alignment.center,
      //   children: <Widget>[
      //     Positioned(
      //         top: 0,
      //         left: 0,
      //         child: Image.asset("assets/images/main_top.png",
      //             width: size.width * 0.25)),
      //     Positioned(
      //         bottom: 0,
      //         right: 0,
      //         child: Image.asset(
      //           "assets/images/login_bottom.png",
      //           width: size.width * 0.3,
      //         )),
      //     child,
      //   ],
      // ),
    );
  }
}