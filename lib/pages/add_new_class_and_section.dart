import 'package:flutter/material.dart';
import 'package:management/utils/app_color.dart';
import 'package:management/utils/constants.dart';
import 'package:management/widgets/custom_drop_down_menu.dart';

class AddClassAndSection extends StatelessWidget {
  const AddClassAndSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 50,
        title: Text(
          'Create class & section',
          style: TextStyle(
            color: AppColor.kGreyColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => popPage(context),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.kPurple,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: bodyPadding),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Class name',
                    style: TextStyle(
                      color: AppColor.kGreyColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomDropDownMenu(
                    menuItems: const ['V', 'VI'],
                    selectedItem: 'example:V',
                    hintText: 'example: V',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Section',
                    style: TextStyle(
                      color: AppColor.kGreyColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomDropDownMenu(
                    menuItems: const [' A', 'B'],
                    selectedItem: 'example: A/B',
                    hintText: 'example: A/B',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Section capacity',
                    style: TextStyle(
                      color: AppColor.kGreyColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomDropDownMenu(
                    menuItems: const ['50', '60', '70'],
                    selectedItem: 'example: 50',
                    hintText: 'example: 50',
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  InkWell(
                    onTap: () {
                      //TODO: Later be removed
                    },
                    child: Center(
                      child: Material(
                         borderRadius: BorderRadius.circular(50.0),
                        elevation: 5,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              gradient: AppColor.kPrimaryGradient),
                          child: Text(
                            'Create',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: AppColor.kWhiteColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
