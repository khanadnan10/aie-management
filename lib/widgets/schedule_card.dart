// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class ScheduleCard extends StatelessWidget {
  final String title;
  final String className;
  final String studentCount;
  final Color color;

  const ScheduleCard({
    Key? key,
    required this.title,
    required this.className,
    required this.studentCount,
    this.color = const Color(0xffEBE4F5),
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
              color: color,
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
