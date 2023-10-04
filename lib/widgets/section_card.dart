
import 'package:flutter/material.dart';
import 'package:management/utils/app_color.dart';
import 'package:management/utils/constants.dart';

class SectionCard extends StatelessWidget {
  final String sectionName;
  final int sectionCapacity;
  const SectionCard({
    Key? key,
    required this.sectionName,
    required this.sectionCapacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(bodyPadding),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: AppColor.kPurple.withOpacity(0.3),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Section $sectionName', // Pass the required section
            style: TextStyle(
              color: AppColor.kBlackColor,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            sectionCapacity.toString(), // Pass the required section
            style: TextStyle(
              color: AppColor.kBlackColor,
              fontWeight: FontWeight.w700,
              fontSize: 40,
            ),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
