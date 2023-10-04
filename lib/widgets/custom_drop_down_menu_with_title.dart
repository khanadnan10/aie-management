// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import 'custom_drop_down_menu.dart';

class CustomDropDownMenuWithTitle extends StatelessWidget {
  const CustomDropDownMenuWithTitle({
    Key? key,
    required this.title,
    required this.hintText,
    required this.menuItems,
    required this.selectedItem,
    this.onClick = const Icon(
      Icons.arrow_drop_up_rounded,
      size: 50,
      color: Colors.grey, // Customize as needed
    ),
    this.offClick = const Icon(
      Icons.arrow_drop_down_rounded,
      size: 50,
      color: Colors.grey, // Customize as needed
    ),
  }) : super(key: key);
  final String title;
  final String hintText;
  final List<String> menuItems;
  final String? selectedItem;
  final Icon onClick;
  final Icon offClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColor.kGreyColor,
            fontSize: 12.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomDropDownMenu(
          menuItems: menuItems,
          selectedItem: selectedItem,
          hintText: hintText,
          onClickIcon: onClick,
          offClickIcon: offClick,
        ),
      ],
    );
  }
}
