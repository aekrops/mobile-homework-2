import 'package:flutter/material.dart';
import 'constants.dart';


class StyledText extends StatelessWidget {
  final String text;
  final double fontSize;
  const StyledText(this.text, this.fontSize, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Text(
        text,
        style:
        TextStyle(
            fontSize: fontSize,
            color: textColor
        ),
            textAlign: TextAlign.center,
      ),
    );
  }
}
