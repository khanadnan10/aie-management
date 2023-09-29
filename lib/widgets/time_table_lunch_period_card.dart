// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../utils/utils.dart';

class TimeTableLunchPeriodCard extends StatelessWidget {
  final String timeFrom;
  final String timeTo;
  const TimeTableLunchPeriodCard({
    Key? key,
    required this.timeFrom,
    required this.timeTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(bottom: 10.0, top: 10),
          padding: const EdgeInsets.all(22.0),
          decoration: BoxDecoration(
            gradient: AppColor.kPrimaryGradientFromTop,
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$timeFrom- $timeTo',
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lunch',
                    style: TextStyle(
                      color: AppColor.kWhiteColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Image(
                    height: 32,
                    image: AssetImage(
                      'assets/images/dinnerPlate.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Positioned(
          child: Image(
            height: 112,
            image: AssetImage(
              'assets/images/3dLunchBoy.png',
            ),
          ),
        ),
        const Positioned(
          right: 20,
          bottom: -10,
          child: Image(
            height: 62,
            image: AssetImage(
              'assets/images/burger.png',
            ),
          ),
        ),
      ],
    );
  }
}
