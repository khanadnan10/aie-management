// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:management/utils/app_color.dart';

class SubjectCard extends StatelessWidget {
  final String className;
  final Widget child;
  final Color color;

  const SubjectCard({
    Key? key,
    required this.className,
    required this.child,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(14.0)),
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                className,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
              ),
              SvgPicture.asset(
                'assets/images/edit-solid.svg',
                height: 18,
                color: AppColor.kGreyColor,
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          child // Add column or row
        ],
      ),
    );
  }
}
