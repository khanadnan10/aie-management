import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class PendingCard extends StatelessWidget {
  final Function() onTap;
  const PendingCard({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: AppColor.kPurpleLightOpacity,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(children: [
          const Icon(
            Icons.hourglass_full_rounded,
            size: 25,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pending student request',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '25',
                  style: TextStyle(
                    color: AppColor.kGreyColor,
                    fontSize: 8.0,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
            color: AppColor.kGreyColor,
          ),
        ]),
      ),
    );
  }
}
