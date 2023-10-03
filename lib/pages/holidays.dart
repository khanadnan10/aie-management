import 'package:flutter/material.dart';
import 'package:management/utils/app_color.dart';
import 'package:management/utils/constants.dart';
import 'package:management/widgets/holiday_card.dart';

class Holidays extends StatelessWidget {
  const Holidays({super.key});

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
