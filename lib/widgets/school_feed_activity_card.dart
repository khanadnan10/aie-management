import 'package:flutter/material.dart';
import 'package:management/utils/constants.dart';
import 'package:management/utils/utils.dart';

import '../utils/app_color.dart';
import 'custom_rounded_button.dart';

class SchoolFeedActivityCard extends StatelessWidget {
  final ImageProvider<Object>? backgroundImage;
  final String title;
  final String userActivity;
  final String timeAgo;
  final String outlineButtonText;
  final Function() outlineOnTap;
  final String filledButtonText;
  final Function() filledOnTap;

  const SchoolFeedActivityCard({
    Key? key,
    required this.backgroundImage,
    required this.title,
    required this.userActivity,
    required this.timeAgo,
    required this.outlineButtonText,
    required this.outlineOnTap,
    required this.filledButtonText,
    required this.filledOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.all(bodyPadding),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColor.kPurpleLightOpacity,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: backgroundImage,
          ),
          Utils(width: 5).bodySizedBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$title ',
                        style: TextStyle(
                          color: AppColor.kBlackColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: userActivity,
                        style: TextStyle(
                          color: AppColor.kBlackColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  timeAgo,
                  style: TextStyle(
                    color: AppColor.kBlackColor,
                    fontSize: 8.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomRoundedButton(
                        text: outlineButtonText,
                        borderEnable: false,
                        onTap: outlineOnTap,
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xff9163D7),
                        ),
                      ),
                    ),
                    Utils(width: 15).bodySizedBox,
                    Expanded(
                      child: CustomRoundedButton(
                        text: filledButtonText,
                        onTap: filledOnTap,
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xff9163D7),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
