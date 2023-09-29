import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback onTap;
  const CustomFloatingActionButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.0,
      width: 64.0,
      child: FloatingActionButton(
        onPressed: onTap,
        child: Ink(
          decoration: BoxDecoration(
            gradient: AppColor.kPrimaryGradient,
            borderRadius: BorderRadius.circular(100.0), // Adjust as needed
          ),
          child: Container(
            alignment: Alignment.center,
            child: const Icon(
              Icons.add,
              size: 40,
              color: Colors.white, // Icon color
            ),
          ),
        ),
      ),
    );
  }
}
