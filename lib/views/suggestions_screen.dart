import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/cards/hotel_card.dart';
import 'package:plan_together/cards/hourly_weather.dart';
import 'package:plan_together/cards/resort_card.dart';
import 'package:plan_together/cards/resort_card_new.dart';
import 'package:plan_together/cards/trips_with_friends.dart';
import 'package:plan_together/cards/weather_main.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';

class SuggestionsScreen extends StatelessWidget {
  const SuggestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 22.sp, right: 20.sp),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to',
                        style: TextStyle(
                            fontSize: 18.2.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'ProximaNovaRegular',
                            color: Colors.black),
                      ),
                      SizedBox(height: 6.6.sp),
                      Text(
                        'Build your dream vacation\nor trip',
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
              TripsWithFriends(
                location: 'Sant Paulo, Milan, Italy',
                dateFrom: 'Wed, Apr 28 2023',
                timeFrom: '5:30 PM',
                dateTo: 'Wed, Apr 28 2023',
                timeTo: '5:30 PM',
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                '1 day to Kickstarting your Trips',
                style: TextStyle(
                    fontSize: 19.8.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'ProximaNovaSemiBold',
                    color: Colors.black),
              ),
              SizedBox(
                height: 20.sp,
              ),
              SizedBox(
                height: 30.sp,
                child: ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                            // width: 127.sp,
                            height: 24.sp,
                            decoration: BoxDecoration(
                                color: GlobalColors.primaryColor,
                                borderRadius: BorderRadius.circular(43.sp)),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 25.sp, right: 25.sp),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'All',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'MontserratMedium',
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Container(
                            // width: 127.sp,
                            height: 24.sp,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: GlobalColors.primaryColor),
                                borderRadius: BorderRadius.circular(43.sp)),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 18.sp, right: 18.sp),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Hotel',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'MontserratMedium',
                                        color: GlobalColors.primaryColor),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Container(
                            // width: 127.sp,
                            height: 24.sp,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: GlobalColors.primaryColor),
                                borderRadius: BorderRadius.circular(43.sp)),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 18.sp, right: 18.sp),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Resturant',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'MontserratMedium',
                                        color: GlobalColors.primaryColor),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Container(
                            // width: 127.sp,
                            height: 24.sp,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: GlobalColors.primaryColor),
                                borderRadius: BorderRadius.circular(43.sp)),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 18.sp, right: 18.sp),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Attraction',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'MontserratMedium',
                                        color: GlobalColors.primaryColor),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Container(
                            // width: 127.sp,
                            height: 24.sp,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: GlobalColors.primaryColor),
                                borderRadius: BorderRadius.circular(43.sp)),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 18.sp, right: 18.sp),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Waterpark',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'MontserratMedium',
                                        color: GlobalColors.primaryColor),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 5.sp,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                'First Hotel Stay',
                style: TextStyle(
                    fontSize: 17.8.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'ProximaNovaSemiBold',
                    color: GlobalColors.primaryColor),
              ),
              SizedBox(
                height: 1.sp,
              ),
              SizedBox(
                  width: 120.sp,
                  child: Divider(
                      color: GlobalColors.primaryColor, thickness: 1.5)),
              SizedBox(
                height: 13.sp,
              ),
              HotelCard(
                date: '23/09/2023',
                image: hotel,
                title: 'Hotel Flower',
              ),
              SizedBox(
                height: 16.sp,
              ),
              Text(
                'Day 1',
                style: TextStyle(
                    fontSize: 19.8.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'ProximaNovaSemiBold',
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.sp,
              ),
              ResortCardNew(
                image: dubai1,
                title: 'Legoland Dubai Resort',
                date: '23/09/2023',
                distance: '46km',
                description:
                    'Quantum computing is a type of computing where information is processed using quantum-mechanical phenomena, such as superposition and entanglement. In traditional computing, information is processed using bits, which can have a value of ',
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                'Second Hotel Stay',
                style: TextStyle(
                    fontSize: 17.8.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'ProximaNovaSemiBold',
                    color: GlobalColors.primaryColor),
              ),
              SizedBox(
                height: 1.sp,
              ),
              SizedBox(
                  width: 147.sp,
                  child: Divider(
                      color: GlobalColors.primaryColor, thickness: 1.5)),
              SizedBox(
                height: 23.sp,
              ),
              HotelCard(
                date: '23/09/2023',
                image: hotel,
                title: 'Hotel Flower',
              ),
              SizedBox(
                height: 16.sp,
              ),
              Text(
                'Day 1',
                style: TextStyle(
                    fontSize: 19.8.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'ProximaNovaSemiBold',
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.sp,
              ),
              ResortCardNew(
                image: dubai2,
                title: 'Legoland Dubai Resort',
                date: '23/09/2023',
                distance: '46km',
                description:
                    'Quantum computing is a type of computing where information is processed using quantum-mechanical phenomena, such as superposition and entanglement. In traditional computing, information is processed using bits, which can have a value of ',
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                'Day 2',
                style: TextStyle(
                    fontSize: 19.8.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'ProximaNovaSemiBold',
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.sp,
              ),
              ResortCardNew(
                image: dubai2,
                title: 'Legoland Dubai Resort',
                date: '23/09/2023',
                distance: '46km',
                description:
                    'Quantum computing is a type of computing where information is processed using quantum-mechanical phenomena, such as superposition and entanglement. In traditional computing, information is processed using bits, which can have a value of ',
              ),
              SizedBox(
                height: 5.sp,
              ),

              Row(
                children: [
                  Container(
                    height: 35.3.sp,
                    width: 110.3.sp,
                    decoration: BoxDecoration(
                        color: GlobalColors.lightBlue2,
                        borderRadius: BorderRadius.circular(26.4.sp)),
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                            fontSize: 12.36.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'ProximaNovaMedium',
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3.5.sp,
                  ),
                  Container(
                    height: 35.3.sp,
                    width: 110.3.sp,
                    decoration: BoxDecoration(
                        color: GlobalColors.green2,
                        borderRadius: BorderRadius.circular(26.4.sp)),
                    child: Center(
                      child: Text(
                        'Share',
                        style: TextStyle(
                            fontSize: 12.36.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'ProximaNovaMedium',
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3.5.sp,
                  ),
                  Container(
                    height: 35.3.sp,
                    width: 110.3.sp,
                    decoration: BoxDecoration(
                        color: GlobalColors.red,
                        borderRadius: BorderRadius.circular(26.4.sp)),
                    child: Center(
                      child: Text(
                        'Delete',
                        style: TextStyle(
                            fontSize: 12.36.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'ProximaNovaMedium',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),

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
    );
  }
}
