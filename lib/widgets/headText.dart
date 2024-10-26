import 'package:flutter/material.dart';

class Headtext extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Alignment alignment;
  final Color tcol;

  const Headtext({
    Key? key,
    required this.text,
    this.fontSize = 20.0,
    this.fontWeight = FontWeight.w900,
    this.alignment = Alignment.centerLeft,
    this.tcol = Colors.black
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: tcol
        ),
      ),
    );
  }
}
