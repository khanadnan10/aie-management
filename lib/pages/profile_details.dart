import 'package:flutter/material.dart';
import 'package:management/utils/app_color.dart';
import 'package:management/utils/constants.dart';
import 'package:management/utils/paths.dart';
import 'package:management/widgets/search_text_field.dart';

import '../utils/utils.dart';
import '../widgets/custom_rounded_button.dart';
import '../widgets/section_heading.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 50,
        title: SearchTextField(
          hintText: 'Search',
          onChanged: (p0) {},
          activeSuffixIcon: false,
          fillColor: AppColor.kLightYellow,
          prefixIconColor: AppColor.kDarkYellow,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: AppColor.kLightYellow,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Paths.drawerBackGroundImage),
                          ),
                        ),
                      ),
                    ),
                    Utils(width: 10).bodySizedBox,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SectionHeading(
                            text: 'Neetu Goel',
                            fontSize: 20.0,
                          ),
                          Utils(height: 2).bodySizedBox,
                          Text(
                            "Class V",
                            style: TextStyle(
                              color: AppColor.kBlackColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Utils(height: 2).bodySizedBox,
                          Text(
                            "Student",
                            style: TextStyle(
                              color: AppColor.kGreyColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Utils(width: 8).bodySizedBox,
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  //TODO: Call Fucntionality Here
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColor.kDarkYellow,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Icon(
                                    Icons.call,
                                    color: AppColor.kWhiteColor,
                                  ),
                                ),
                              ),
                              Utils(width: bodyPadding).bodySizedBox,
                              GestureDetector(
                                onTap: () {
                                  //TODO: Call Fucntionality Here
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    border: Border.fromBorderSide(
                                      BorderSide(
                                        width: 1,
                                        color: AppColor.kDarkYellow,
                                      ),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.messenger_rounded,
                                    color: AppColor.kDarkYellow,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
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
