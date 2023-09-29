import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:management/pages/assign_subject.dart';
import 'package:management/pages/class_schedule.dart';
import 'package:management/pages/create_schedule.dart';
import 'package:management/pages/create_subject.dart';
import 'package:management/pages/subject_assign.dart';
import 'package:management/pages/time_table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ), /* Page view used here just to show all the pages */
      home: PageView(
        controller: pageController,
        scrollDirection: Axis.vertical,
        children: const [
          SubjectAssign(),
          AssignSubject(),
          CreateSubject(),
          ClassSchedule(),
          TimeTable(),
        ],
      ),
    );
  }
}
