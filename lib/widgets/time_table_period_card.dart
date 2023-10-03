import 'package:flutter/material.dart';
import 'package:management/utils/app_color.dart';

class TimeTablePeriodCard extends StatelessWidget {
  final int period;
  final String fromTime;
  final String toTime;
  final String subject;
  final String className;

  const TimeTablePeriodCard({
    Key? key,
    required this.period,
    required this.fromTime,
    required this.toTime,
    required this.subject,
    required this.className,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColor.kLightPurple.withOpacity(0.3),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Period $period',
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
              Text(
                '$fromTime - $toTime',
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Class $className | ',
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      subject,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage(
                      'assets/images/appbarLogo.png',
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Akash',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
