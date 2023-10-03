
import 'package:flutter/material.dart';
import 'package:management/utils/app_color.dart';

class ScheduleStepper extends StatelessWidget {
  final String text;
  const ScheduleStepper({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 14,
          width: 14,
          decoration: BoxDecoration(
            color: AppColor.kLightPurple,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 10.0,
            color: AppColor.kGreyColor,
          ),
        )
      ],
    );
  }
}
