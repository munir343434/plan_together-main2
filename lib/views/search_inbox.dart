import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/views/chat_screen.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../widgets/inbox_message.dart';
import '../widgets/inbox_message_yesterday.dart';
import '../widgets/text_field.dart';
import '../widgets/welcome_widget.dart';

class SearchInbox extends StatefulWidget {
  const SearchInbox({Key? key}) : super(key: key);

  @override
  State<SearchInbox> createState() => _SearchInboxState();
}

class _SearchInboxState extends State<SearchInbox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(left: 17, right: 17, top: 25.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                welcomeWidget(headingText: "Plan Together",subheading: "Build your own Vacation or Trip."),
                TextWidget(
                    text: "Inbox",
                    size: 19.88,
                    color: homeBlackColor,
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 21,
                ),
                textField(
                  text: "Search People",
                  prefixIcon: Icons.search,
                ),
                SizedBox(
                  height: 17,
                ),
                InkWell(
                    onTap: () {
                      Get.to(() => ChatScreen()
                      );
                    },
                    child: InboxMessage()),
                InboxMessage(),
                InboxMessageYesterday(),
                InboxMessageYesterday(),
                InboxMessageYesterday(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
