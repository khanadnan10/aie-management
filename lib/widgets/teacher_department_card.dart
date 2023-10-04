// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:management/utils/utils.dart';

import '../utils/app_color.dart';
import '../utils/paths.dart';

class TeacherDepartmentCard extends StatelessWidget {
  final String dept;
  final String more;
  final List<String> images;
  final Function() onTap;

  const TeacherDepartmentCard({
    Key? key,
    required this.dept,
    required this.more,
    required this.images,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: AppColor.kPurpleLightOpacity,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: [
          Icon(
            Icons.access_time_filled,
            size: 32.0,
            color: AppColor.kPurple,
          ),
          Utils(width: 10).bodySizedBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  dept,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          const Positioned(
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage(Paths.drawerBackGroundImage),
                            ),
                          ),
                          // for (int i = 1; i < 5; i++)
                          ...images.asMap().entries.map((entry) {
                            final index = entry.key;
                            final value = entry.value;
                            return Positioned(
                              left: index * 10,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage(value),
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: onTap,
                        child: Text(
                          more,
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColor.kGreyColor,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
