
import 'package:flutter/material.dart';
import 'package:management/widgets/section_heading.dart';

import '../utils/app_color.dart';
import '../utils/constants.dart';
import '../utils/paths.dart';
import '../utils/utils.dart';

class ProfileIdCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String role;
  final Function() onCall;
  final Function() onMessage;
  const ProfileIdCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.role,
    required this.onCall,
    required this.onMessage,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColor.kLightYellow,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(
              height: screenSize.height * 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage(Paths.drawerBackGroundImage), // TODO: To be changed to network image
                ),
              ),
            ),
          ),
          Utils(width: 10).bodySizedBox,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionHeading(
                  text: title,
                  fontSize: 20.0,
                ),
                Utils(height: 2).bodySizedBox,
                Text(
                  subTitle,
                  style: TextStyle(
                    color: AppColor.kBlackColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Utils(height: 2).bodySizedBox,
                Text(
                  role,
                  style: TextStyle(
                    color: AppColor.kGreyColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Utils(width: 8).bodySizedBox,
                Row(
                  children: [
                    InkWell(
                      onTap: onCall,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColor.kDarkYellow,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Icon(
                          Icons.call,
                          color: AppColor.kWhiteColor,
                        ),
                      ),
                    ),
                    Utils(width: bodyPadding).bodySizedBox,
                    InkWell(
                      onTap: onMessage,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.fromBorderSide(
                            BorderSide(
                              width: 1,
                              color: AppColor.kDarkYellow,
                            ),
                          ),
                        ),
                        child: Icon(
                          Icons.messenger_rounded,
                          color: AppColor.kDarkYellow,
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
