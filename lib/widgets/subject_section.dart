import 'package:flutter/material.dart';
import 'package:management/widgets/subject_name.dart';
import '../utils/utils.dart';

class SubjectSection extends StatelessWidget {
  const SubjectSection({
    Key? key,
    required this.text,
    required this.subjects,
  }) : super(key: key);

  final List<String> subjects;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
            color: AppColor.kGreyColor,
          ),
        ),
        const SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...subjects.map(
              (e) => SubjectName(text: e),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
