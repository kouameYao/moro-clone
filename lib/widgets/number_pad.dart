import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';

class NumberPad extends StatelessWidget {
  final Function(int) onNumberSelected;

  NumberPad({@required this.onNumberSelected});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          NumberRows(
            size: size,
            children: [
              buildNumber(1),
              buildNumber(2),
              buildNumber(3),
            ],
          ),
          NumberRows(
            size: size,
            children: [
              buildNumber(4),
              buildNumber(5),
              buildNumber(6),
            ],
          ),
          NumberRows(
            size: size,
            children: [
              buildNumber(7),
              buildNumber(8),
              buildNumber(9),
            ],
          ),
          NumberRows(
            size: size,
            children: [
              buildEmptySpace(),
              buildNumber(0),
              buildBackspace(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildNumber(int number) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      child: InkWell(
        splashColor: kBluePrimaryColor,
        borderRadius: BorderRadius.circular(40),
        onTap: () {
          onNumberSelected(number);
        },
        child: Center(
          child: Text(
            number.toString(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBackspace() {
    return Expanded(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: InkWell(
          splashColor: kBluePrimaryColor,
          borderRadius: BorderRadius.circular(40),
          onTap: () {
            onNumberSelected(-1);
          },
          child: Center(
            child: Icon(
              Icons.backspace,
              size: 24,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEmptySpace() {
    return Expanded(
      child: Container(),
    );
  }
}

class NumberRows extends StatelessWidget {
  const NumberRows({
    @required this.size,
    @required this.children,
  });

  final Size size;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.11,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
