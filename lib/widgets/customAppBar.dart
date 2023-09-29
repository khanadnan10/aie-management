// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:management/widgets/appbar_action_icon.dart';

import '../utils/utils.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Function() onTap;
  const CustomAppbar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onTap,
        icon: Icon(
          Icons.menu,
          color: AppColor.kBlackColor,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: kToolbarHeight + 60,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/appbarBgImage.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      actions: [
        AppBarActionIcon(
          icon: Icon(
            Icons.chat_bubble,
            color: AppColor.kPurple,
          ),
          onTap: () {
            //TODO: navigate to notification
          },
        ),
        AppBarActionIcon(
            icon: Icon(
              Icons.notifications,
              color: AppColor.kPurple,
            ),
            onTap: () {
              //TODO: navigate to notification
            }),
        Center(
          child: InkWell(
            onTap: () {
              //TODO: Navigate to profile of the user
            },
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 45,
              width: 45,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColor.kWhiteColor,
                image: const DecorationImage(
                  image: AssetImage('assets/images/appbarLogo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 75);
}
