import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class CustomRoundedButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CustomRoundedButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColor.kPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
      ),
    );
  }
}
