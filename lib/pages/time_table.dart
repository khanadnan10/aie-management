// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:management/utils/constants.dart';

import 'package:management/utils/app_color.dart';
import 'package:management/widgets/time_table_lunch_period_card.dart';
import 'package:management/widgets/time_table_period_card.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  int selectedIndex = 1;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> day = ['Mon', 'Tue', 'Wed', 'Thr', 'Fri', 'Sat', 'Sun'];
    List<Map<String, String>> periodTime = [
      {
        'fromTime': '8:00',
        'toTime': '8:40',
      },
      {
        'fromTime': '8:40',
        'toTime': '9:20',
      },
      {
        'fromTime': '9:20',
        'toTime': '10:00',
      },
      {
        'fromTime': '10:00',
        'toTime': '10:40',
      },
      {
        'fromTime': '10:40',
        'toTime': '11:20',
      },
      {
        'fromTime': '12:10',
        'toTime': '12:40',
      },
      {
        'fromTime': '12:40',
        'toTime': '1:20',
      },
      {
        'fromTime': '1:20',
        'toTime': '2:00',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 50,
        title: Text(
          'Time Table',
          style: TextStyle(
            color: AppColor.kWhiteColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            //TODO: Navigate to previous page
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.kWhiteColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppColor.kPrimaryLightGradient,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 100 - kToolbarHeight,
            padding:  EdgeInsets.symmetric(
              horizontal: bodyPadding,
            ).copyWith(bottom: 12),
            decoration: BoxDecoration(
              gradient: AppColor.kPrimaryLightGradient,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: day.asMap().entries.map((entry) {
                final index = entry.key;
                final dayName = entry.value;

                return GestureDetector(
                  onTap: () {
                    _pageController.jumpToPage(
                      index,
                    );
                  },
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: Colors.transparent,
                    ),
                    child: Chip(
                      backgroundColor: index == selectedIndex
                          ? AppColor.kWhiteColor
                          : Colors.transparent,
                      label: Text(
                        dayName,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                          color: index == selectedIndex
                              ? AppColor.kLightPurple
                              : AppColor.kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          // body section
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: day.length,
              onPageChanged: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemCount: periodTime.length,
                            itemBuilder: (context, count) {
                              var data = periodTime[count];
                              if (count == 4) {
                                return const Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TimeTableLunchPeriodCard(
                                      timeFrom: '11:20',
                                      timeTo: '12:00',
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                );
                              }
                              return TimeTablePeriodCard(
                                  period: count + 1,
                                  fromTime: data['fromTime']!,
                                  toTime: data['toTime']!,
                                  subject: 'Science',
                                  className: 'V-C');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
