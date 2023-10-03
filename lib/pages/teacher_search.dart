import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:management/pages/teacher_request.dart';
import 'package:management/utils/constants.dart';
import 'package:management/utils/utils.dart';
import 'package:management/widgets/customAppBar.dart';
import 'package:management/widgets/pending_card.dart';
import 'package:management/widgets/section_heading.dart';
import 'package:management/widgets/small_profile_card.dart';
import 'package:management/widgets/teacher_department_card.dart';

import '../utils/paths.dart';
import '../utils/strings.dart';
import '../widgets/drawer_screen.dart';
import '../widgets/search_text_field.dart';

class TeacherSearch extends StatefulWidget {
  const TeacherSearch({super.key});

  @override
  State<TeacherSearch> createState() => _TeacherSearchState();
}

class _TeacherSearchState extends State<TeacherSearch> {
  final AdvancedDrawerController controller = AdvancedDrawerController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    List<String> dept = [
      'Physics',
      'Chemistry',
      'Biology',
      'Accounts',
      'English',
      'Hindi',
    ];

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
                  onTap: () => nextPage(context, const TeacherRequest())),
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
                        text: 'Best performed Teachers of the Year',
                      ),
                      Utils().bodySizedBox,
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const SmallProfileCard(
                              profileImage: Paths.schoolProfileImage,
                              title: 'Ritu K',
                              subTitle: 'Science | Primary',
                            ),
                          ),
                        ),
                      ),
                      Utils().bodySizedBox,
                      const SectionHeading(
                        text: 'Head of departments',
                      ),
                      Utils().bodySizedBox,
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const SmallProfileCard(
                              profileImage: Paths.schoolProfileImage,
                              title: 'Menakshi',
                              subTitle: 'HOD | Physics',
                            ),
                          ),
                        ),
                      ),
                      Utils().bodySizedBox,
                      const SectionHeading(
                        text: 'Secondary wing Teachers',
                      ),
                      Utils().bodySizedBox,
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const SmallProfileCard(
                              profileImage: Paths.schoolProfileImage,
                              title: 'Ritu K',
                              subTitle: 'Arts | Secondary',
                            ),
                          ),
                        ),
                      ),
                      Utils().bodySizedBox,
                      const SectionHeading(
                        text: 'Primary wing Teachers',
                      ),
                      Utils().bodySizedBox,
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const SmallProfileCard(
                              profileImage: Paths.schoolProfileImage,
                              title: 'Ritu K',
                              subTitle: 'Arts | Primary',
                            ),
                          ),
                        ),
                      ),
                      Utils().bodySizedBox,
                      const SectionHeading(
                        text: 'View Teachers from department',
                      ),
                      Utils().bodySizedBox,
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 80,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return  TeacherDepartmentCard(
                              dept: dept[index],
                              more: '2 more',
                            );
                          },
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



/* 
 
 */