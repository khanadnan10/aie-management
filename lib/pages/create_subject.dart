import 'package:flutter/material.dart';
import 'package:management/utils/constants.dart';
import 'package:management/utils/app_color.dart';
import 'package:management/widgets/custom_drop_down_menu.dart';

class CreateSubject extends StatefulWidget {
  const CreateSubject({super.key});

  @override
  State<CreateSubject> createState() => _CreateSubjectState();
}

class _CreateSubjectState extends State<CreateSubject> {
  String? boardName;
  String? className;
  String? authorName;
  String? subjectName;
  String? bookName;

  List<String> boardDI = ['CBSE', 'ICSE'];
  List<String> classDI = ['V', 'VI', 'VII'];
  List<String> authorDI = ['NCERT', 'XYZ'];
  List<String> subjectDI = ['Maths', 'English', 'Economics'];
  List<String> bookDI = ['A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 50,
        title: Text(
          'Create Subject',
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
        padding:  EdgeInsets.symmetric(horizontal: bodyPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Board',
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
                menuItems: boardDI,
                selectedItem: boardName,
                hintText: 'example: CBSE',
              ),
              const SizedBox(
                height: 10,
              ),
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
                menuItems: classDI,
                selectedItem: className,
                hintText: 'V',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Subject author',
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
                menuItems: authorDI,
                selectedItem: authorName,
                hintText: 'example: NCERT',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Subject name',
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
                menuItems: subjectDI,
                selectedItem: subjectName,
                hintText: 'example: Maths',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Book name',
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
                menuItems: bookDI,
                selectedItem: bookName,
                hintText: 'example: Maths',
              ),
              const SizedBox(
                height: 50.0,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
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
