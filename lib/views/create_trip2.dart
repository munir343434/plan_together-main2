import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:plan_together/views/home_screen.dart';
import 'package:plan_together/widgets/mainButton.dart';

import '../utils/global_colors.dart';
import '../widgets/get_textfield.dart';
import '../widgets/text_widget.dart';
import 'bottom_tabs.dart';

class CreateTrip2 extends StatefulWidget {
  const CreateTrip2({Key? key}) : super(key: key);

  @override
  State<CreateTrip2> createState() => _CreateTrip2State();
}

class _CreateTrip2State extends State<CreateTrip2> {
  int id = 1;
 int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: GlobalColors.whiteColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: GlobalColors.blackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
                text: "Create Trip",
                size: 21,
                color: GlobalColors.homeBlackColor,
                fontWeight: FontWeight.w700),
            TextWidget(
                text: "Simple Trip",
                size: 13,
                color: Color(0XFF797979),
                fontWeight: FontWeight.w600)
          ],
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.all(29),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                    text: "Trip Name",
                    size: 15,
                    color: Color(0xff424242),
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 15,
                ),
                getTextField(height: 56),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: "Departure Date",
                        size: 15,
                        color: Color(0xff424242),
                        fontWeight: FontWeight.w600),
                    SizedBox(
                      width: 75,
                    ),
                    TextWidget(
                        text: "Arrival Date",
                        size: 15,
                        color: Color(0xff424242),
                        fontWeight: FontWeight.w600),
                  ],
                ),
               SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: SizedBox(
                          width: 156,
                          child: Flexible(
                              child: getTextField(
                                  height: 56, iconData: Icons.calendar_month))),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: SizedBox(
                          width: 156,
                          child: Flexible(
                              child: getTextField(
                            height: 56,
                            iconData: Icons.calendar_month,
                          ))),
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),
                TextWidget(
                    text: "Add Travelers",
                    size: 15,
                    color: Color(0xff424242),
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 15,
                ),
                getTextField(height: 56),
                SizedBox(
                  height: 15,
                ),
                TextWidget(
                    text: "Destinations",
                    size: 15,
                    color: Color(0xff424242),
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 15,
                ),
                getTextField(height: 56),
                // Expanded(child: Container()),
                SizedBox(
                  height: 15,
                ),
                TextWidget(
                    text: "How you are Travelling",
                    size: 15,
                    color: Color(0xff424242),
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 25,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              index=0;
                            });
                          },
                          child: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffE0E0E0)
                            ),child: Center(
                              child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:index==0? Color(0xff1976D2):Color(0xffE0E0E0),
                              ),
                          ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        TextWidget(
                            text: "Car",
                            size: 15,
                            color: Color(0xff424242),
                            fontWeight: FontWeight.w600)
                      ]),
                      Row(children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              index=1;

                            });
                          },
                          child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffE0E0E0)
                          ),child: Center(
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:index==1? Color(0xff1976D2):Color(0xffE0E0E0),
                              ),
                            ),
                          ),
                      ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        TextWidget(
                            text: "Flight",
                            size: 15,
                            color: Color(0xff424242),
                            fontWeight: FontWeight.w600)
                      ]),
                      Row(children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              index=2;
                            });

                          },
                          child: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffE0E0E0)
                            ),child: Center(
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:index==2? Color(0xff1976D2):Color(0xffE0E0E0),
                              ),
                            ),
                          ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        TextWidget(
                            text: "Both",
                            size: 15,
                            color: Color(0xff424242),
                            fontWeight: FontWeight.w600)
                      ]),
                    ])
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 23, left: 23, bottom: 16),
        child: InkWell(
          onTap: () {
            Get.offAll(BottomTabs());
          },
          child: MainButton(
              color: GlobalColors.primaryColor,
              text: "Create",
              textColor: GlobalColors.whiteColor,
              textSize: 16,
              textFont: FontWeight.w700),
        ),
      ),
    );
  }
}
