import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/utils.dart';

class SmallProfileCard extends StatelessWidget {
  final String profileImage;
  final String title;
  final String subTitle;
  const SmallProfileCard({
    Key? key,
    required this.profileImage,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      height: screenSize.height * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: AppColor
                    .kGreyColor, // Using colors only to fill the background
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image(
                image: AssetImage(
                  profileImage,
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Utils(height: 10).bodySizedBox,
          Text(
            title,
            style: const TextStyle(
              fontSize: 13.0,
            ),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
          Utils(height: 4).bodySizedBox,
          Text(
            subTitle,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 8.0,
              color: AppColor.kGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
