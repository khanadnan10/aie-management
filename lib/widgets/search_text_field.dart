// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../utils/utils.dart';

class SearchTextField extends StatelessWidget {
  final String hintText;
  const SearchTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.text,
      onChanged: (value) {
        //TODO: Search facility
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppColor.kPurple,
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
        fillColor: Colors.white,
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
          color: AppColor.kPurple,
        ),
        suffixIcon: Icon(
          Icons.arrow_drop_down_rounded,
          size: 48,
          color: AppColor.kPurple,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColor.kGreyColor,
        ),
      ),
    );
  }
}
