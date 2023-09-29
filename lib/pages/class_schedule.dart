import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:management/pages/create_schedule.dart';
import 'package:management/widgets/customAppBar.dart';
import 'package:management/widgets/custom_floating_action_button.dart';
import 'package:management/widgets/drawer_screen.dart';
import 'package:management/widgets/schedule_card.dart';
import 'package:management/widgets/search_text_field.dart';

import '../utils/paths.dart';
import '../utils/strings.dart';
import '../utils/utils.dart';

class ClassSchedule extends StatefulWidget {
  const ClassSchedule({super.key});

  @override
  State<ClassSchedule> createState() => _ClassScheduleState();
}

class _ClassScheduleState extends State<ClassSchedule> {
  final AdvancedDrawerController controller = AdvancedDrawerController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Dummy Data
    List<Map<String, String>> scheduleDetails = [
      {
        'title': 'I-A',
        'studentCount': '23',
      },
      {
        'title': 'I-B',
        'studentCount': '32',
      },
      {
        'title': '2-A',
        'studentCount': '43',
      },
      {
        'title': '2-B',
        'studentCount': '41',
      },
      {
        'title': '3-A',
        'studentCount': '43',
      },
      {
        'title': '3-B',
        'studentCount': '42',
      },
      {
        'title': '4-A',
        'studentCount': '40',
      },
      {
        'title': '4-B',
        'studentCount': '41',
      },
      {
        'title': '5-A',
        'studentCount': '43',
      },
      {
        'title': '5-B',
        'studentCount': '42',
      },
      {
        'title': '6-A',
        'studentCount': '40',
      },
      {
        'title': '6-B',
        'studentCount': '41',
      }
    ];
    final ScreenSize = MediaQuery.of(context).size;

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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateSchedule(),
              ),
            );
          },
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchTextField(
                      hintText: "Class or section",
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      'Schedule',
                      style: TextStyle(
                          color: AppColor.kGreyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 15.0),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: GridView.builder(
                        // physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisExtent: 120,
                        ),
                        itemCount: scheduleDetails.length,
                        itemBuilder: (context, index) {
                          return ScheduleCard(
                            title: scheduleDetails[index]['title']!,
                            className: scheduleDetails[index]['title']!,
                            studentCount: scheduleDetails[index]
                                ['studentCount']!,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
