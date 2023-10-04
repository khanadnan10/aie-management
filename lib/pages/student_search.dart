// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:management/pages/student_request.dart';
import 'package:management/utils/app_color.dart';

import 'package:management/utils/constants.dart';
import 'package:management/utils/utils.dart';
import 'package:management/widgets/customAppBar.dart';
import 'package:management/widgets/pending_card.dart';
import 'package:management/widgets/schedule_card.dart';
import 'package:management/widgets/section_heading.dart';
import 'package:management/widgets/small_profile_card.dart';

import '../utils/paths.dart';
import '../utils/strings.dart';
import '../widgets/drawer_screen.dart';
import '../widgets/search_text_field.dart';

class StudentSearch extends StatefulWidget {
  const StudentSearch({super.key});

  @override
  State<StudentSearch> createState() => _StudentSearchState();
}

class _StudentSearchState extends State<StudentSearch> {
  final AdvancedDrawerController controller = AdvancedDrawerController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return AdvancedDrawer(
      controller: controller,
      openScale: 0.7,
      openRatio: 0.65,
      backdrop: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
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
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: bodyPadding)
                  .copyWith(bottom: 0),
              child: SearchTextField(
                hintText: "Search Students by name or Roll no",
                activeSuffixIcon: false,
                onChanged: (value) {
                  //TODO:
                },
              ),
            ),
            Utils().bodySizedBox,
            // default sizedbox of 15.0
            Padding(
              padding: EdgeInsets.all(bodyPadding).copyWith(bottom: 0),
              child: PendingCard(
                  //TODO Navigate to student search
                  onTap: () => nextPage(context, const StudentRequest())),
            ),
            Utils().bodySizedBox,
            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.all(bodyPadding).copyWith(bottom: 0, right: 0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SectionHeading(
                        text: 'Top scoring students from secondary classes',
                      ),
                      Utils().bodySizedBox,
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const SmallProfileCard(
                              profileImage: 'assets/images/profileLady.png',
                              title: 'Ritu K',
                              subTitle: 'Class IV-C',
                            ),
                          ),
                        ),
                      ),
                      Utils().bodySizedBox,
                      const SectionHeading(
                        text: 'Top scoring students from primary section',
                      ),
                      Utils().bodySizedBox,
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const SmallProfileCard(
                              profileImage: 'assets/images/femaleCard.png',
                              title: 'Ritu K',
                              subTitle: 'Class IV-C',
                            ),
                          ),
                        ),
                      ),
                      Utils().bodySizedBox,
                      const SectionHeading(
                        text: 'All rounder students',
                      ),
                      Utils().bodySizedBox,
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const SmallProfileCard(
                              profileImage: 'assets/images/female.png',
                              title: 'Ritu K',
                              subTitle: 'Class IV-C',
                            ),
                          ),
                        ),
                      ),
                      Utils().bodySizedBox,
                      const SectionHeading(
                        text: 'Top students in games',
                      ),
                      Utils().bodySizedBox,
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const SmallProfileCard(
                              profileImage: 'assets/images/femaleCard.png',
                              title: 'Ritu K',
                              subTitle: 'Class IV-C',
                            ),
                          ),
                        ),
                      ),
                      Utils().bodySizedBox,
                      const SectionHeading(
                        text: 'View students from class list',
                      ),
                      Utils().bodySizedBox,
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisExtent: 120,
                          ),
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return const ScheduleCard(
                              title: 'I-A',
                              className: 'I-A',
                              studentCount: '23',
                              color: Color(0xffD8F3F4),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            //TODO: View all classes 
                          },
                          child: SectionHeading(
                            text: 'View all Classes',
                            color: AppColor.kPurple,
                          ),
                        ),
                      ),
                      Utils().bodySizedBox,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
