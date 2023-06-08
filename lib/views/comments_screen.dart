import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../utils/global_colors.dart';
import '../widgets/comments.dart';
import '../widgets/text_field.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.5,
          backgroundColor: GlobalColors.whiteColor,
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: GlobalColors.blackColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: TextWidget(
              text: "Comments",
              size: 21.88,
              color: GlobalColors.homeBlackColor,
              fontWeight: FontWeight.w700)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
            Padding(
              padding: EdgeInsets.only(left: 25, top: 10, right: 19),
              child: Column(
                children: [
                  Comments(
                    img: "assets/images/profile2.png",
                    text:
                        "Ultricies ultricies interdum dolor sodales. Vitae feugiat vitae vitae quis id consectetur. Aenean urna, lectus enim suscipit eget. Tristique bibendum nibh enim dui.",
                    name: "Courtney Henry",
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/dotted_line.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Comments(
                            img: "assets/images/inbox2.png",
                            text:
                                "Ultricies ultricies interdum dolor sodales. Vitae feugiat vitae vitae quis id consectetur. Aenean urna, lectus enim suscipit eget. Tristique bibendum nibh enim dui.",
                            name: "Courtney Henry",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Comments(
                    img: "assets/images/profile2.png",
                    text:
                        "Ultricies ultricies interdum dolor sodales. Vitae feugiat vitae vitae quis id consectetur. Aenean urna, lectus enim suscipit eget. Tristique bibendum nibh enim dui.",
                    name: "Courtney Henry",
                    text2: "View 6 more Replies",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 170,
            ),
            Column(
              children: [
                Divider(
                  thickness: 0.5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10,bottom: 20),
                  child: Row(children: [
                    Expanded(
                      child: textField(
                        text: "Write a Comment",
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: GlobalColors.primaryColor),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/send.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
