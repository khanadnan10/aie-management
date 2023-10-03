import 'package:flutter/material.dart';
import 'package:management/utils/app_color.dart';

class CreateSubjectContainer extends StatelessWidget {
  const CreateSubjectContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // TODO: Implement adding another item to the list
          // You can use a callback function passed as a parameter
          // to handle this.
        },
        child: Container(
          width: 150,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: AppColor.kPurple.withOpacity(0.3), // Customize as needed
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.add,
                color: Colors.grey, // Customize as needed
              ),
              Text(
                'Create subject',
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
