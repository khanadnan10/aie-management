import 'package:flutter/material.dart';
import 'package:management/widgets/custom_rounded_button.dart';

import '../utils/app_color.dart';
import '../utils/utils.dart';
import 'section_heading.dart';

class RectangleRequestCard extends StatelessWidget {
  final String profileImage;
  final String title;
  final String subTitle;
  final String timeAgo;
  final Function() onAccept;
  final Function() onReject;

  const RectangleRequestCard({
    Key? key,
    required this.profileImage,
    required this.title,
    required this.subTitle,
    required this.timeAgo,
    required this.onAccept,
    required this.onReject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColor.kPurple.withOpacity(0.3),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(profileImage),
              ),
            ],
          ),
          Utils(width: 10).bodySizedBox,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SectionHeading(text: title),
                    Text(
                      timeAgo,
                      style: TextStyle(
                        color: AppColor.kGreyColor,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                Utils(height: 2).bodySizedBox,
                Text(
                  subTitle,
                  style: TextStyle(
                    color: AppColor.kGreyColor,
                    fontSize: 12.0,
                  ),
                ),
                Utils(width: 8).bodySizedBox,
                Row(
                  children: [
                    Expanded(
                      child: CustomRoundedButton(
                        text: 'Accept',
                        onTap: onAccept,
                      ),
                    ),
                    Utils(width: 10).bodySizedBox,
                    Expanded(
                      child: CustomRoundedButton(
                        text: 'Reject',
                        onTap: onReject,
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
