import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/cards/hotel_card.dart';
import 'package:plan_together/cards/hourly_weather.dart';
import 'package:plan_together/cards/resort_card.dart';
import 'package:plan_together/cards/resort_card_new.dart';
import 'package:plan_together/cards/trip_with_friend_simple.dart';
import 'package:plan_together/cards/trips_with_friends.dart';
import 'package:plan_together/cards/weather_main.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/widgets/add_new_trip_button.dart';
import 'package:plan_together/widgets/mainButton.dart';
import 'package:plan_together/widgets/text_widget.dart';

class UniqueTrip extends StatelessWidget {
  const UniqueTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 17.sp, right: 17.sp,top: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: GlobalColors.blackColor,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Get inspired',
                            style: TextStyle(
                                fontSize: 21.8.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'ProximaNovaMedium',
                                color: GlobalColors.primaryColor),
                          ),
                          SizedBox(
                            height: 5.3.sp,
                          ),
                          Text(
                            'Start Exploring & Building your Vacations.\nFunEasyQuick',
                            style: TextStyle(
                                fontSize: 12.7.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'ProximaNovaRegular',
                                color: GlobalColors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            shopbg,
                            height: 39.sp,
                            width: 39.sp,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: 13.3.sp,
                          ),
                          CircleAvatar(
                            backgroundColor: GlobalColors.grey,
                            maxRadius: 19.5.sp,
                            backgroundImage: AssetImage(profile2),
                          )
                        ],
                      )
                    ],
                  ),
                  // SizedBox(
                  //   height: 30.sp,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'Created Trips',
                  //       style: TextStyle(
                  //           fontSize: 19.8.sp,
                  //           fontWeight: FontWeight.w600,
                  //           fontFamily: 'ProximaNovaSemiBold',
                  //           color: Colors.black),
                  //     ),
                  //     Container(
                  //       height: 31.sp,
                  //       width: 114.sp,
                  //       decoration: BoxDecoration(
                  //           color: GlobalColors.primaryColor,
                  //           borderRadius: BorderRadius.circular(23.1.sp)),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Text(
                  //             'Add New Trip',
                  //             style: TextStyle(
                  //                 fontSize: 11.sp,
                  //                 fontWeight: FontWeight.w600,
                  //                 fontFamily: 'ProximaNovaRegular',
                  //                 color: Colors.white),
                  //           ),
                  //           SizedBox(
                  //             width: 3.sp,
                  //           ),
                  //           Icon(
                  //             Icons.add,
                  //             size: 12.sp,
                  //             color: GlobalColors.white,
                  //           )
                  //         ],
                  //       ),
                  //     )
                  //   ],
                  // ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  TripsWithFriendsSimple(
                    location: 'Sant Paulo, Milan, Italy',
                    dateFrom: 'Wed, Apr 28 2023',
                    timeFrom: '5:30 PM',
                    dateTo: 'Wed, Apr 28 2023',
                    timeTo: '5:30 PM',
                    buttonText: "Unique",
                    buttonColor: Color(0XFF08B88E),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  MainButton(height: 64,
                      color: GlobalColors.primaryColor,
                      text: "Add Things to do",
                      textColor: Colors.white,
                      textSize: 16,
                      textFont: FontWeight.w700),
                  SizedBox(
                    height: 30.sp,
                  ),
                  TextWidget(text: "Top 10 Attractions based on city ", size: 20, color: Color(0xff101018), fontWeight: FontWeight.w600),
                  SizedBox(
                    height: 20.sp,
                  ),
                  ResortCardNew(
                    image: dubai1,
                    title: 'Legoland Dubai Resort',
                    date: '23/09/2023',
                    distance: '46km',
                    description:
                    'Quantum computing is a type of computing where information is processed using quantum-mechanical phenomena, such as superposition and entanglement. In traditional computing, information is processed using bits, which can have a value of ',
                  ),
                  ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ResortCardNew(
                          image: dubai2,
                          title: 'Legoland Dubai Resort',
                          date: '23/09/2023',
                          distance: '46km',
                          onPressed: () {},
                          description:
                          'Quantum computing is a type of computing where information is processed using quantum-mechanical phenomena, such as superposition and entanglement. In traditional computing, information is processed using bits, which can have a value of ',
                        );
                      }),

                  // WeatherMain(
                  //   date: 'Monday, December 20, 2021',
                  //   time: '3.30PM',
                  //   image: cloud1,
                  //   temp: '18',
                  //   description: 'Cloudy Rain',
                  //   lastUpdated: '3.00 PM',
                  // ),
                  // SizedBox(
                  //   height: 24.sp,
                  // ),
                  // Text(
                  //   'Hourly Weather',
                  //   style: TextStyle(
                  //       fontSize: 20.sp,
                  //       fontWeight: FontWeight.w500,
                  //       fontFamily: 'SFProMedium',
                  //       color: Colors.black),
                  // ),
                  // SizedBox(
                  //   height: 16.sp,
                  // ),
                  // SizedBox(
                  //   height: 110.sp,
                  //   child: ListView.builder(
                  //     itemCount: 6,
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) {
                  //       return HourlyWeather(
                  //           image: cloud3, temp: '20', time: '4.00PM');
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          )),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 10, left: 30, bottom: 15, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            bottomContainer(image: checklist, color: GlobalColors.green),
            bottomContainer(image: share, color: GlobalColors.green),
            bottomContainer(image: delete, color: Color(0xffFF3333)),
            MainButton(
                width: 158,
                height: 56,
                color: Color(0xffC1C1C1),
                text: "Save",
                textColor: Colors.white,
                textSize: 16,
                textFont: FontWeight.w700),
          ],
        ),
      ),
    );
  }
}

Widget bottomContainer({
  required String image,
  required Color color,
}) {
  return Container(
    height: 36,
    width: 36,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
    child: Center(
      child: Image.asset(image),
    ),
  );
}
