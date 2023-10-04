// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final double fontSize;
  final Color color;
  const SectionHeading({
    Key? key,
    this.fontSize = 16.0,
    this.color = const Color(0xff1C1B1F),
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        color: color,
      ),
      softWrap: true,
      overflow: TextOverflow.ellipsis,
    );
  }
}
