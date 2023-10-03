// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:management/utils/utils.dart';

class HolidayCard extends StatelessWidget {
  final String month;
  final String date;
  final List<Widget> children;
  const HolidayCard({
    Key? key,
    required this.month,
    required this.date,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(month),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Utils(width: 10).bodySizedBox,
          Expanded(
            flex: 8,
            child: Column(
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}

class HolidayEventNameCard extends StatelessWidget {
  const HolidayEventNameCard({
    Key? key,
    required this.eventName,
    required this.color,
  }) : super(key: key);

  final String eventName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                eventName,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
