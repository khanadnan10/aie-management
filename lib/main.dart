import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:management/pages/feed_screen.dart';
import 'package:management/pages/holidays.dart';
import 'package:management/pages/student_search.dart';
import 'package:management/pages/teacher_search.dart';

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
    // PageController pageController = PageController(initialPage: 0);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      /* Page view used only to show all the pages */
      home: const Holidays(),
    );
  }
}

/* 
PageView(
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
 */