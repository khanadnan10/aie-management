import 'package:flutter/material.dart';
import 'package:management/utils/constants.dart';
import 'package:management/widgets/custom_drop_down_menu_with_title.dart';
import 'package:management/widgets/dashed_line.dart';
import 'package:management/widgets/schedule_stepper.dart';

import '../utils/app_color.dart';
import '../widgets/custom_drop_down_menu.dart';

class CreateSchedule extends StatefulWidget {
  const CreateSchedule({super.key});

  @override
  State<CreateSchedule> createState() => _CreateScheduleState();
}

class _CreateScheduleState extends State<CreateSchedule> {
  bool _isSelected = false;

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    String? selectedItem;
    List<String> day = ['Mon', 'Tue', 'Wed', 'Thr', 'Fri', 'Sat', 'Sun'];
    List<String> stepper = ['Science', 'Hindi', 'English', 'Break', 'Games'];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 50,
        title: Text(
          'Create Schedule',
          style: TextStyle(
            color: AppColor.kGreyColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            //TODO: Navigate to previous page
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.kLightPurple,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:bodyPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 12,
                    padding:  EdgeInsets.symmetric(horizontal: bodyPadding),
                    child: DashedLine(
                      color: AppColor.kInActiveGreyColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...stepper.map(
                        (e) => ScheduleStepper(text: e),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: CustomDropDownMenuWithTitle(
                      selectedItem: selectedItem,
                      title: 'Board',
                      hintText: 'V',
                      menuItems: const ['V', 'VII'],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: CustomDropDownMenuWithTitle(
                      selectedItem: selectedItem,
                      title: 'Section',
                      hintText: 'A',
                      menuItems: const ['A', 'B', 'C'],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomDropDownMenuWithTitle(
                selectedItem: selectedItem,
                title: 'Day',
                hintText: 'example: Monday',
                menuItems: day,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start time',
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
                          menuItems: ['V'],
                          selectedItem: selectedItem,
                          hintText: 'V',
                          onClick: const Icon(
                            Icons.watch_later_rounded,
                            size: 50,
                            color: Colors.grey,
                          ),
                          offClick: const Icon(
                            Icons.watch_later_rounded,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'End time',
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
                          menuItems: const [
                            'A',
                          ],
                          selectedItem: selectedItem,
                          hintText: 'A',
                          onClick: const Icon(
                            Icons.watch_later_rounded,
                            size: 50,
                            color: Colors.grey,
                          ),
                          offClick: const Icon(
                            Icons.watch_later_rounded,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomDropDownMenuWithTitle(
                      selectedItem: selectedItem,
                      title: 'Subject',
                      hintText: 'subject',
                      menuItems: ['English', 'Hindi'],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: CustomDropDownMenuWithTitle(
                      selectedItem: selectedItem,
                      title: 'Activity',
                      hintText: 'Games',
                      menuItems: ['Cricket', 'Volleyball'],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  GestureDetector(
                    onTap: _toggleSelection,
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2.0,
                          color: AppColor.kPurple,
                        ),
                      ),
                      child: Center(
                        child: _isSelected
                            ? Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: AppColor.kPurple,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text('Break'),
                ],
              ),
              const SizedBox(height: 16),
              CustomDropDownMenuWithTitle(
                title: 'Teacher',
                hintText: 'example: Neetu Goel',
                menuItems: const ['Abc', 'Xyz'],
                selectedItem: selectedItem,
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () {
                  //TODO: Create schedule in action
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
              ),
              const SizedBox(height: 26),
            ],
          ),
        ),
      ),
    );
  }
}
