// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  final double fontSize;
  const SectionHeading({
    Key? key,
    this.fontSize = 16.0,
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
      ),
    );
  }
}
