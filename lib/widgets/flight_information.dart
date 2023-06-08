import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/widgets/calendar_textfield.dart';
import 'package:plan_together/widgets/text_widget.dart';

class FlightInformation extends StatelessWidget {
  const FlightInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.all(25),
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(left: 31, right: 31, top: 15),
              child: Column(
                children: [
                  Image.asset("assets/images/indigo.png"),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                text: "5.50",
                                size: 22.45,
                                color: GlobalColors.homeBlackColor,
                                fontWeight: FontWeight.w700),
                            TextWidget(
                                text: "DEL",
                                size: 15,
                                color: GlobalColors.homeBlackColor,
                                fontWeight: FontWeight.w500),
                          ]),
                      Image.asset("assets/images/flight.png"),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextWidget(
                                text: "7.30",
                                size: 22.45,
                                color: GlobalColors.homeBlackColor,
                                fontWeight: FontWeight.w700),
                            TextWidget(
                                text: "CCU",
                                size: 15,
                                color: GlobalColors.homeBlackColor,
                                fontWeight: FontWeight.w500),
                          ]),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextWidget(
                              text: "Indira Gandhi International Airport",
                              size: 13.58,
                              color: Color(0xff555555),
                              fontWeight: FontWeight.w400)),
                      SizedBox(
                        width: 102,
                      ),
                      Expanded(
                        child: TextWidget(
                            text: "Subhash Chandra Bose International Airport",
                            size: 13.58,
                            color: Color(0xff555555),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      CalendarTextField(text: "Date",),
                      SizedBox(
                        width: 14,
                      ),
                      CalendarTextField(text: "Time"),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              text: "Flight",
                              size: 11.22,
                              color: Color(0xff555555),
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: 10,
                          ),
                          TextWidget(
                              text: "IN 230",
                              size: 15,
                              color: GlobalColors.homeBlackColor,
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              text: "Gate",
                              size: 11.22,
                              color: Color(0xff555555),
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: 10,
                          ),
                          TextWidget(
                              text: "22",
                              size: 15,
                              color: GlobalColors.homeBlackColor,
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              text: "Seat",
                              size: 11.22,
                              color: Color(0xff555555),
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: 10,
                          ),
                          TextWidget(
                              text: "2B",
                              size: 15,
                              color: GlobalColors.homeBlackColor,
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              text: "Class",
                              size: 11.22,
                              color: Color(0xff555555),
                              fontWeight: FontWeight.w400),
                          SizedBox(
                            height: 10,
                          ),
                          TextWidget(
                              text: "Economy",
                              size: 15,
                              color: GlobalColors.homeBlackColor,
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
    );
  }

}
