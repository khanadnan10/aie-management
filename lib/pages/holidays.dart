import 'package:flutter/material.dart';
import 'package:management/utils/app_color.dart';
import 'package:management/utils/constants.dart';
import 'package:management/utils/utils.dart';
import 'package:management/widgets/holiday_card.dart';
import 'package:management/widgets/section_heading.dart';

class Holidays extends StatefulWidget {
  const Holidays({super.key});

  @override
  State<Holidays> createState() => _HolidaysState();
}

class _HolidaysState extends State<Holidays> {
  final TextEditingController holidayDateController = TextEditingController();
  final TextEditingController festivalNameController = TextEditingController();

  @override
  void dispose() {
    festivalNameController.dispose();
    holidayDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List bgColor = [
      const Color(0xffFCF2D9),
      const Color(0xffCFECFE),
      const Color(0xffD9F6F4),
      const Color(0xffFFE0DB),
    ];
    //TODO: Remove when integrating with the backend

    List<Map<String, dynamic>> holiday = [
      {
        'month': 'May',
        'date': '16',
        'eventType': [
          {
            'eventName': 'Festival Name',
          }
        ],
      },
      {
        'month': 'June',
        'date': '16',
        'eventType': [
          {
            'eventName': 'Festival Name',
          },
          {
            'eventName': 'Event Name',
          }
        ],
      },
      {
        'month': 'June',
        'date': '25',
        'eventType': [
          {
            'eventName': 'Festival Name',
          }
        ],
      },
      {
        'month': 'July',
        'date': '05',
        'eventType': [
          {
            'eventName': 'Event Name',
          }
        ],
      },
      {
        'month': 'May',
        'date': '16',
        'eventType': [
          {
            'eventName': 'Festival Name',
          }
        ],
      },
      {
        'month': 'June',
        'date': '16',
        'eventType': [
          {
            'eventName': 'Event Name',
          },
          {
            'eventName': 'Festival Name',
          },
        ],
      },
      {
        'month': 'June',
        'date': '25',
        'eventType': [
          {
            'eventName': 'Festival Name',
          },
        ],
      },
    ];

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Holidays',
          style: TextStyle(
            color: AppColor.kBlackColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            popPage(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.kGreyColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              //TODO: Add Search functionality
              print('➕ Added');
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          16.0), // Adjust the radius as needed
                    ),
                    content: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SectionHeading(text: 'Create holiday'),
                            Utils().bodySizedBox,
                            TextField(
                              controller: festivalNameController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(12)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(12)),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: Colors.grey[100],
                                filled: true,
                                hintText: 'Festival name',
                                hintStyle: TextStyle(
                                  color: AppColor.kGreyColor,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Utils().bodySizedBox,
                            TextField(
                              controller: holidayDateController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(12)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(12)),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: Colors.grey[100],
                                filled: true,
                                suffixIconColor: AppColor.kGreyColor,
                                suffixIcon: const Icon(Icons.date_range),
                                hintText: '29 Sep 2023',
                                hintStyle: TextStyle(
                                  color: AppColor.kGreyColor,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Utils().bodySizedBox,
                            Material(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Container(
                                width: screenSize.width * 0.5,
                                padding: const EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    gradient: AppColor.kPrimaryGradient),
                                child: Text(
                                  'Assign',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.kWhiteColor),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            icon: Icon(
              Icons.add,
              color: AppColor.kGreyColor,
            ),
          ),
          IconButton(
            onPressed: () {
              //TODO: Add Search functionality
              print('🔍 Search');
            },
            icon: Icon(
              Icons.search,
              color: AppColor.kGreyColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(bodyPadding).copyWith(bottom: 0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: holiday.length,
          itemBuilder: (context, index) {
            final colorIndex = index % bgColor.length;

            return HolidayCard(
              month: holiday[index]['month'],
              date: holiday[index]['date'],
              children: holiday[index]['eventType'].map<Widget>((event) {
                return HolidayEventNameCard(
                  eventName: event['eventName'],
                  color: bgColor[colorIndex],
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
