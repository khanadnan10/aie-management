import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:management/pages/add_new_class_and_section.dart';
import 'package:management/utils/app_color.dart';
import 'package:management/utils/constants.dart';
import 'package:management/utils/paths.dart';
import 'package:management/utils/strings.dart';
import 'package:management/utils/utils.dart';
import 'package:management/widgets/customAppBar.dart';
import 'package:management/widgets/custom_floating_action_button.dart';
import 'package:management/widgets/drawer_screen.dart';
import 'package:management/widgets/search_text_field.dart';
import 'package:management/widgets/section_card.dart';
import 'package:management/widgets/section_heading.dart';

class CreateClassAndSection extends StatefulWidget {
  const CreateClassAndSection({super.key});

  @override
  State<CreateClassAndSection> createState() => _CreateClassAndSectionState();
}

class _CreateClassAndSectionState extends State<CreateClassAndSection> {
  final AdvancedDrawerController controller = AdvancedDrawerController();

  List<String> section = ['A', 'B', 'C'];

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
        floatingActionButton: CustomFloatingActionButton(onTap: () {
          //TODO: create class and section
          nextPage(context, const AddClassAndSection());
        }),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: bodyPadding)
                  .copyWith(bottom: 0),
              child: SearchTextField(
                hintText: "Class and Section",
                activeSuffixIcon: false,
                onChanged: (value) {
                  //TODO:
                },
              ),
            ),
            Utils().bodySizedBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // One class and section details
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: bodyPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SectionHeading(text: 'Class 1'),
                          InkWell(
                            onTap: () {
                              //TODO: Add section
                            },
                            child: Text(
                              'Add section',
                              style: TextStyle(
                                color: AppColor.kPurple,
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Utils().bodySizedBox,
                    Padding(
                      padding: EdgeInsets.only(left: bodyPadding),
                      child: SizedBox(
                        height: 110,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: section.length,
                          itemExtent: 130,
                          itemBuilder: (context, index) {
                            return SectionCard(
                              sectionName: section[index],
                              sectionCapacity: 25,
                            );
                          },
                        ),
                      ),
                    ),
                    Utils().bodySizedBox,
                    // class 2 and section details
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: bodyPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SectionHeading(text: 'Class 2'),
                          InkWell(
                            onTap: () {
                              //TODO: Add section
                            },
                            child: Text(
                              'Add section',
                              style: TextStyle(
                                color: AppColor.kPurple,
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Utils().bodySizedBox,
                    Padding(
                      padding: EdgeInsets.only(left: bodyPadding),
                      child: SizedBox(
                        height: 110,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemExtent: 130,
                          itemBuilder: (context, index) {
                            return SectionCard(
                              sectionName: section[index],
                              sectionCapacity: 25,
                            );
                          },
                        ),
                      ),
                    ),
                    Utils().bodySizedBox,
                    // class 2 and section details
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: bodyPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SectionHeading(text: 'Class 3'),
                          InkWell(
                            onTap: () {
                              //TODO: Add section
                            },
                            child: Text(
                              'Add section',
                              style: TextStyle(
                                color: AppColor.kPurple,
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Utils().bodySizedBox,
                    Padding(
                      padding: EdgeInsets.only(left: bodyPadding),
                      child: SizedBox(
                        height: 110,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemExtent: 130,
                          itemBuilder: (context, index) {
                            return SectionCard(
                              sectionName: section[index],
                              sectionCapacity: 25,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
