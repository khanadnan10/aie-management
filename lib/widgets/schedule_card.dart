
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class ScheduleCard extends StatelessWidget {
  final String title;
  final String className;
  final String studentCount;

  const ScheduleCard({
    Key? key,
    required this.title,
    required this.className,
    required this.studentCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: AppColor.kLightPurple.withOpacity(0.3),
            ),
            child: Text(
              title,
              style: TextStyle(
                color: AppColor.kBlackColor,
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "Class $className",
            style: TextStyle(
              color: AppColor.kBlackColor,
              fontSize: 12.0,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            "$studentCount students",
            style: TextStyle(
              color: AppColor.kGreyColor,
              fontSize: 8.0,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
