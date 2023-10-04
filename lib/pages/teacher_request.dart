import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:management/pages/profile_details.dart';
import 'package:management/utils/app_color.dart';
import 'package:management/utils/constants.dart';
import 'package:management/utils/utils.dart';
import 'package:management/widgets/customAppBar.dart';
import 'package:management/widgets/custom_rounded_button.dart';
import 'package:management/widgets/drawer_screen.dart';
import 'package:management/widgets/rectangle_request_card.dart';
import 'package:management/widgets/search_text_field.dart';
import 'package:management/widgets/section_heading.dart';

import '../utils/paths.dart';
import '../utils/strings.dart';

class TeacherRequest extends StatefulWidget {
  const TeacherRequest({super.key});

  @override
  State<TeacherRequest> createState() => _TeacherRequestState();
}

class _TeacherRequestState extends State<TeacherRequest> {
  final AdvancedDrawerController controller = AdvancedDrawerController();
  bool isContainerVisible = false;

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
        appBar: CustomAppbar(onTap: () => controller.showDrawer()),
        body: GestureDetector(
          onTap: () => setState(() {
            if (isContainerVisible) {
              isContainerVisible = false;
              print('isContainer Changed');
            }
          }),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(bodyPadding).copyWith(bottom: 0),
                child: Column(
                  children: [
                    SearchTextField(
                      hintText: 'Search Students by name or Roll no',
                      activeSuffixIcon: false,
                      onChanged: (p0) {
                        //TODO: Search student functionality
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SectionHeading(text: 'Teacher request'),
                        IconButton(
                          onPressed: () {
                            //TODO: Accept all request at once or reject
                            setState(() {
                              isContainerVisible = !isContainerVisible;
                            });
                            print('Teacher Request more option tapped 👩‍🏫');
                          },
                          icon: Icon(
                            Icons.more_horiz,
                            size: 25,
                            color: AppColor.kGreyColor,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => nextPage(
                              context,
                              const ProfileDetails(), // TODO: Change with teacher profile card
                            ),
                            child: RectangleRequestCard(
                              profileImage: 'assets/images/profileLady.png',
                              title: 'Asha Goel',
                              subTitle: 'Hindi, English  ',
                              timeAgo: '5 hours ago',
                              onAccept: () {
                                //TODO: Accept the student request

                                print('Teacher has been accepted 🥳');
                              },
                              onReject: () {
                                //TODO: Reject the student request

                                print('Teacher has been rejected 😥');
                              },
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 16,
                top: 100,
                child: Visibility(
                  visible: isContainerVisible ? true : false,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 5000),
                    padding: EdgeInsets.all(bodyPadding),
                    decoration: BoxDecoration(
                      color: AppColor.kWhiteColor,
                      boxShadow: isContainerVisible
                          ? [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                              ),
                            ]
                          : [],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: isContainerVisible
                        ? Column(
                            children: [
                              CustomRoundedButton(
                                text: 'Accept all',
                                borderEnable: true,
                                onTap: () {
                                  setState(() {
                                    isContainerVisible = false;
                                  });
                                  print('All Teacher has been accepted');
                                },
                              ),
                              Utils().bodySizedBox,
                              CustomRoundedButton(
                                text: 'Reject all',
                                borderEnable: true,
                                onTap: () {
                                  setState(() {
                                    isContainerVisible = false;
                                  });
                                  print('All Teacher has been Rejected');
                                },
                              ),
                            ],
                          )
                        : null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
