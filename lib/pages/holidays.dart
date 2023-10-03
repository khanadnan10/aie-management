import 'package:flutter/material.dart';
import 'package:management/utils/app_color.dart';
import 'package:management/utils/constants.dart';
import 'package:management/utils/utils.dart';

class Holidays extends StatelessWidget {
  const Holidays({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    children: [
                      Text('May'),
                      Text(
                        '16',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Utils(width: 10).bodySizedBox,
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xffFCF2D9),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Festival name',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xffFCF2D9),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Festival name',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xffFCF2D9),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Festival name',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xffFCF2D9),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Festival name',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* 
SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('May'),
                        Text(
                          '16',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Utils(width: 10).bodySizedBox,
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xffFCF2D9),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Festival name',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
 */