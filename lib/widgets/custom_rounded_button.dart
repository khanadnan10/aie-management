// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class CustomRoundedButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final BorderSide borderSide;
  final bool borderEnable;
  const CustomRoundedButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.borderSide = BorderSide.none,
    this.borderEnable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: borderEnable ? AppColor.kPurple : Colors.transparent,
        shape: RoundedRectangleBorder(
          side: borderSide,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: !borderEnable ? AppColor.kPurple : AppColor.kWhiteColor,
        ),
      ),
    );
  }
}
