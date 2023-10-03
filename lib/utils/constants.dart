import 'package:flutter/material.dart';

double bodyPadding = 16.0;

//Navigate to page 
nextPage(BuildContext context, page) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}
