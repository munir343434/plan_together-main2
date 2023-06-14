import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/cards/hourly_weather.dart';
import 'package:plan_together/cards/resort_card.dart';
import 'package:plan_together/cards/trips_with_friends.dart';
import 'package:plan_together/cards/weather_main.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/views/trip_summery.dart';
import 'package:plan_together/widgets/welcome_widget.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 17.sp, right: 17.sp, top: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.sp),
              welcomeWidget(headingText: "Get inspired",subheading: "Add attractions to your trip, see how far they are to your hotel and more!"),

              Text(
                'Recent Saved Trips',
                style: TextStyle(
                    fontSize: 19.8.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'ProximaNovaSemiBold',
                    color: Colors.black),
              ),
              SizedBox(
                height: 10.sp,
              ),
              // SizedBox(
              //   height: 0.63.sh,
              //   child: ListView.builder(
              //     itemCount: 6,
              //     shrinkWrap: true,
              //     // scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //       return TripsWithFriends(
              //           location: 'Sant Paulo, Milan, Italy',
              //           dateFrom: 'Wed, Apr 28 2023',
              //           timeFrom: '5:30 PM',
              //           dateTo: 'Wed, Apr 28 2023',
              //           timeTo: '5:30 PM');
              //     },
              //   ),
              // ),

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
              SizedBox(
                height: 0.64.sh,
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 12.sp),
                      child: TripsWithFriends(
                        location: 'Sant Paulo, Milan, Italy',
                        dateFrom: 'Wed, Apr 28 2023',
                        timeFrom: '5:30 PM',
                        dateTo: 'Wed, Apr 28 2023',
                        timeTo: '5:30 PM',
                        share: info,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TripSummery(),
                            )),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
