// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:management/pages/create_subject.dart';

import '../utils/app_color.dart';

class CustomDropDownMenu extends StatefulWidget {
  final List<String> menuItems;
  String? selectedItem;
  final String hintText;
  final Icon onClickIcon;
  final Icon offClickIcon;

  CustomDropDownMenu({
    Key? key,
    required this.menuItems,
    required this.selectedItem,
    required this.hintText,
    this.onClickIcon = const Icon(
      Icons.arrow_drop_up_rounded,
      size: 50,
      color: Colors.grey, // Customize as needed
    ),
    this.offClickIcon = const Icon(
      Icons.arrow_drop_down_rounded,
      size: 50,
      color: Colors.grey, // Customize as needed
    ),
  }) : super(key: key);

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        isExpanded
            ? Material(
                borderRadius: BorderRadius.circular(24.0),
                elevation: 3,
                child: Container(
                  margin: const EdgeInsets.only(top: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: AppColor
                        .kWhiteColor, // Use a constant color or customize as needed
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Suggested',
                          style: TextStyle(
                            color: Colors
                                .grey, // Use a constant color or customize as needed
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                      ...widget.menuItems.map(
                        (e) {
                          return RadioListTile(
                            activeColor: Colors.purple, // Customize as needed
                            title: Text(e),
                            value: e,
                            groupValue: widget.selectedItem,
                            onChanged: (value) {
                              setState(() {
                                widget.selectedItem = value.toString();
                                print("selected:value: $value");
                              });
                              isExpanded = false;
                            },
                          );
                        },
                      ),
                      //TODO: To add create subject widget
                      
                      // Already created and is in widgets folder
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => setState(() {
                  isExpanded = !isExpanded;
                }),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: AppColor.kPurple
                        .withOpacity(0.3), // Customize as needed
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.selectedItem ?? widget.hintText,
                        style: const TextStyle(
                          color: Colors.grey, // Customize as needed
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      isExpanded ? widget.onClickIcon : widget.offClickIcon,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
