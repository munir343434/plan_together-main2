import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:plan_together/cards/home_screen_card.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/views/Profile_screen.dart';
import 'package:plan_together/widgets/mainButton.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../widgets/welcome_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List circleIcons = const [];

  List starIcons = const [
    Icon(
      Icons.star,
      color: Color(0xffFFCD00),
    ),
    Icon(
      Icons.star,
      color: Color(0xffFFCD00),
    ),
    Icon(
      Icons.star,
      color: Color(0xffFFCD00),
    ),
    Icon(
      Icons.star,
      color: Color(0xffFFFFFF),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalColors.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 17, right: 17, top: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                welcomeWidget(headingText: "Plan Together",subheading: "Build your own Vacation or Trip."),
                MainButton(
                    color: GlobalColors.primaryColor,
                    text: "Start Building my Trip",
                    textFont: FontWeight.w700,
                    textSize: 16,
                    onPressed: (){
                      Get.to(ProfileScreen());
                    },
                    textColor: Colors.white),
                SizedBox(
                  height: 30,
                ),
                TextWidget(
                    text: "Community Timline",
                    size: 19.88,
                    color: GlobalColors.homeBlackColor,
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 19,
                ),
                HomeScreenCard(
                  comments: '1600',
                  hearts: '416',
                  image: home,
                  description:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
                  username: '@CameronStewart',
                ),
                SizedBox(height: 22.sp),
                HomeScreenCard(
                  comments: '1600',
                  hearts: '416',
                  image: home2,
                  description:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
                  username: '@CameronStewart',
                ),
                SizedBox(height: 20.sp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
