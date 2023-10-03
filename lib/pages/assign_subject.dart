import 'package:flutter/material.dart';
import 'package:management/utils/constants.dart';
import 'package:management/utils/app_color.dart';
import 'package:management/widgets/custom_drop_down_menu.dart';

class AssignSubject extends StatefulWidget {
  const AssignSubject({super.key});

  @override
  State<AssignSubject> createState() => _AssignSubjectState();
}

class _AssignSubjectState extends State<AssignSubject> {
  String? classSelectedItem;
  String? subjectSelectedItem;
  String? sectionSelectedItem;

  List<String> classDropDownItem = ['V', 'VI', 'VII'];
  List<String> sectionMenuItem = ['A', 'B', 'C'];
  List<String> subjectMenuItem = ['English', 'Economics'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 50,
        title: Text(
          'Assign subject',
          style: TextStyle(
            color: AppColor.kGreyColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.kPurple,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: bodyPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Class',
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
                menuItems: classDropDownItem,
                selectedItem: classSelectedItem,
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
                menuItems: sectionMenuItem,
                selectedItem: sectionSelectedItem,
                hintText: 'example: A/B',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Subject',
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
                menuItems: subjectMenuItem,
                selectedItem: subjectSelectedItem,
                hintText: 'example: English',
              ),
              const SizedBox(
                height: 50.0,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  //TODO: Later be removed
                  print(
                      '$sectionSelectedItem..$subjectSelectedItem..$classSelectedItem');
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
                        'Assign',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: AppColor.kWhiteColor),
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
    );
  }
}
