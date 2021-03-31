import 'package:flutter/material.dart';
import 'package:solution_moro/constants.dart';
import 'package:solution_moro/widgets/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final Icon suffixIcon;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kBluePrimaryColor,
            ),
            suffixIcon: suffixIcon,
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
