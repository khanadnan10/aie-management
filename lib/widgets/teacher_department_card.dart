import 'package:flutter/material.dart';
import 'package:management/utils/utils.dart';

import '../utils/app_color.dart';
import '../utils/paths.dart';

class TeacherDepartmentCard extends StatelessWidget {
  final String dept;
  final String more;
  // final List images;

  const TeacherDepartmentCard({
    Key? key,
    required this.dept,
    required this.more,
    // required this.images,
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
                    const Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage:
                                AssetImage(Paths.drawerBackGroundImage),
                          ),
                          Positioned(
                            left: 10,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage(Paths.drawerBackGroundImage),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage(Paths.drawerBackGroundImage),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage(Paths.drawerBackGroundImage),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  AssetImage(Paths.drawerBackGroundImage),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        more,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: AppColor.kGreyColor,
                          fontSize: 10.0,
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
