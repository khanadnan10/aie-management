import 'package:flutter/material.dart';

class AppColor {
  static Color kLightGreen = const Color(0xffAEF0C3);
  static Color kPurple = const Color(0xff9163D7);
  static Color kLightPurple = const Color(0xff9163D7);
  static Color kPaleYellow = const Color(0xffFFD16E);
  static Color kWhiteColor = Colors.white;
  static Color kBlackColor = const Color(0xff1C1B1F);
  static Color kGreyColor = const Color(0xff707070);
  static Color kInActiveGreyColor = const Color(0xffA9A9B1);
  static LinearGradient kPrimaryGradient = const LinearGradient(
    colors: [
      Color(0xff9866CF),
      Color(0xff7253F6),
    ],
    begin: Alignment.topLeft,
  );
  static LinearGradient kPrimaryGradientFromTop = const LinearGradient(
    colors: [
      Color(0xff9866CF),
      Color(0xff7253F6),
    ],
    begin: Alignment.topCenter,
  );
  static LinearGradient kPrimaryLightGradient = const LinearGradient(colors: [
    Color(0xff8C97C6),
    Color(0xff9163D7),
  ], begin: Alignment.topLeft);
}
