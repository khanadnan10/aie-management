// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:management/utils/app_color.dart';
import 'package:management/utils/constants.dart';
import 'package:management/widgets/custom_chip.dart';
import 'package:management/widgets/profile_id_card.dart';
import 'package:management/widgets/search_text_field.dart';

import '../utils/utils.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 50,
        title: SearchTextField(
          hintText: 'Search',
          onChanged: (p0) {},
          borderColor: AppColor.kWhiteColor,
          activeSuffixIcon: false,
          fillColor: AppColor.kLightYellow,
          prefixIconColor: AppColor.kDarkYellow,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => popPage(context),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.kGreyColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: bodyPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileIdCard(
                // TODO: Change the asset image to network image
                screenSize: screenSize,
                title: 'Neetu Goel',
                subTitle: "Class V",
                role: "Student",
                onCall: () {
                  //TODO: Call Functionality Here
                },
                onMessage: () {
                  //TODO: Message Functionality Here
                },
              ),
              Utils().bodySizedBox,
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomChip(
                      text: 'Profile',
                      onTap: () {
                        // TODO: Show profile section
                      },
                    ),
                    CustomChip(
                      text: 'Academic',
                      onTap: () {
                        // TODO: Show profile section
                      },
                    ),
                    CustomChip(
                      text: 'Attendence',
                      onTap: () {
                        // TODO: Show profile section
                      },
                    ),
                    CustomChip(
                      text: 'Performance',
                      onTap: () {
                        // TODO: Show profile section
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
