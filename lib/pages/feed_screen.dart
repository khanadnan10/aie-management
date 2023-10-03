// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'package:management/utils/app_color.dart';
import 'package:management/utils/constants.dart';
import 'package:management/utils/paths.dart';
import 'package:management/utils/strings.dart';
import 'package:management/utils/utils.dart';
import 'package:management/widgets/customAppBar.dart';
import 'package:management/widgets/custom_chip.dart';
import 'package:management/widgets/drawer_screen.dart';
import 'package:management/widgets/school_feed_activity_card.dart';
import 'package:management/widgets/section_heading.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final AdvancedDrawerController controller = AdvancedDrawerController();

  List<Map<String, String>> feedDetail = [ // Hard Coded Only 
    {
      'title': 'Megh Sharma',
      'userActivity': 'started talking attendence for Class 6',
      'timeAgo': '3 min ago',
      'outlineButtonText': 'Decline',
      'filledButtonText': 'View Class',
    },
    {
      'title': 'Megh Sharma',
      'userActivity': 'declined to take her C lass V for period 3',
      'timeAgo': '3 min ago',
      'outlineButtonText': 'Assign other',
      'filledButtonText': 'Call',
    },
    {
      'title': '3 students',
      'userActivity': 'who were present are missing from class 6-C period 4',
      'timeAgo': '3 min ago',
      'outlineButtonText': 'View all',
      'filledButtonText': 'Search',
    },
    {
      'title': 'Class 6 ',
      'userActivity': 'missing students are nowhere to be found',
      'timeAgo': '3 min ago',
      'outlineButtonText': 'View all',
      'filledButtonText': 'Search',
    },
  ];

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
        body: Padding(
          padding: EdgeInsets.all(bodyPadding).copyWith(bottom: 0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionHeading(text: 'School Feed'),
                  Utils().bodySizedBox,
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomChip(
                          text: 'All Classes',
                          color: AppColor.kGreyColor,
                          onTap: () {
                            // TODO: Filter all classes
                          },
                        ),
                        CustomChip(
                          text: 'Primary Classes',
                          color: AppColor.kGreyColor,
                          onTap: () {
                            // TODO: Filter Primary Classes
                          },
                        ),
                        CustomChip(
                          text: 'Secondary Classes',
                          color: AppColor.kGreyColor,
                          onTap: () {
                            // TODO: Filter Secondary Classes
                          },
                        ),
                      ],
                    ),
                  ),
                  Utils().bodySizedBox,
                ],
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return SchoolFeedActivityCard(
                      backgroundImage:
                          const AssetImage('assets/images/female.png'),
                      title: feedDetail[index]['title']!,
                      userActivity: feedDetail[index]['userActivity']!,
                      timeAgo: feedDetail[index]['timeAgo']!,
                      outlineButtonText: feedDetail[index]
                          ['outlineButtonText']!,
                      filledButtonText: feedDetail[index]['filledButtonText']!,
                      filledOnTap: () {
                        //TODO: Functiinality for view class/ call/ search
                      },
                      outlineOnTap: () {
                        //TODO: Functiinality for decline/Assign other/ view all
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
