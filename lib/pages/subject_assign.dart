// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:management/utils/paths.dart';
import 'package:management/utils/strings.dart';

import 'package:management/utils/utils.dart';
import 'package:management/widgets/custom_floating_action_button.dart';
import 'package:management/widgets/drawer_screen.dart';

import '../widgets/customAppBar.dart';
import '../widgets/search_text_field.dart';
import '../widgets/subject_card.dart';
import '../widgets/subject_section.dart';

class SubjectAssign extends StatefulWidget {
  const SubjectAssign({super.key});

  @override
  State<SubjectAssign> createState() => _SubjectAssignState();
}

class _SubjectAssignState extends State<SubjectAssign> {
  final AdvancedDrawerController controller = AdvancedDrawerController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    List<String> _subjects = [
      'Arts',
      'English',
      'Hindi',
      'Maths'
    ]; // Hard code for the subject list
    List<String> _otherSubjects = [
      'SST',
      'English',
      'Hindi',
      'Maths'
    ]; // Hard code for the subject list

    return AdvancedDrawer(
      controller: controller,
      openScale: 0.7,
      openRatio: 0.65,
      backdrop: SizedBox(
        width: ScreenSize.width,
        height: ScreenSize.height,
        child: Image.asset(
          'assets/images/drawerBackGround.png',
          fit: BoxFit.fill,
        ),
      ),
      childDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      drawer: const DrawerScreen(
        schoolName: Strings.schoolName,
        location: Strings.schoolLocation,
        profileImg: Paths.schoolProfileImage,
      ),
      child: Scaffold(
        appBar: CustomAppbar(
          onTap: () => controller.showDrawer(),
        ),
        floatingActionButton: CustomFloatingActionButton(
          onTap: () {
            //TODO: Functionality for schedule
          },
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchTextField(
                  hintText: "class",
                ),
                const SizedBox(height: 15.0),
                Text(
                  'Subject assign to classes',
                  style: TextStyle(
                      color: AppColor.kGreyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 15.0),
                SubjectCard(
                  className: 'Class V',
                  color: AppColor.kLightGreen,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SubjectSection(
                        subjects: _subjects,
                        text: 'Section A-B',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                SubjectCard(
                  className: 'Class VI',
                  color: AppColor.kPaleYellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SubjectSection(
                        subjects: _subjects,
                        text: 'Section A-B-C',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                SubjectCard(
                  className: 'Class VII',
                  color: AppColor.kLightGreen,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SubjectSection(
                        subjects: _subjects,
                        text: 'Section A',
                      ),
                      SubjectSection(
                        subjects: _otherSubjects,
                        text: 'Section B',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
