// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class SearchTextField extends StatelessWidget {
  final Color fillColor;
  final Color prefixIconColor;
  final Color borderColor;
  final String hintText;
  final Function(String?) onChanged;
  final bool activeSuffixIcon; // for later use in other components
  const SearchTextField({
    Key? key,
    this.fillColor = Colors.white,
    this.prefixIconColor = const Color(0xff9163D7),
    this.borderColor = Colors.white,
    required this.hintText,
    required this.onChanged,
    this.activeSuffixIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.text,
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(40.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppColor.kPurple,
          ),
          borderRadius: BorderRadius.circular(40.0),
        ),
        filled: true,
        fillColor: fillColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            25.0,
          ),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        prefixIcon: Icon(
          Icons.search,
          size: 28,
          color: prefixIconColor,
        ),
        suffixIcon: activeSuffixIcon == true
            ? Icon(
                Icons.arrow_drop_down_rounded,
                size: 48,
                color: AppColor.kPurple,
              )
            : null,
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColor.kGreyColor,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
