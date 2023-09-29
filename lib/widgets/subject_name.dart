import 'package:flutter/material.dart';

class SubjectName extends StatelessWidget {
  final String text;
  const SubjectName({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.circle,
          size: 8,
        ),
        const SizedBox(width: 5.0),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}
