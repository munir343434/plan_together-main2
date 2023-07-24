import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plan_together/cards/trips_with_friends.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/views/simple_trip_screen.dart';
import 'package:plan_together/views/unique_trip_screen.dart';
import 'package:plan_together/widgets/add_new_trip_btn.dart';
import 'package:plan_together/widgets/add_new_trip_button.dart';
import 'package:plan_together/widgets/welcome_widget.dart';

import 'create_trip2.dart';

class AddTripsScreen extends StatelessWidget {
  const AddTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 17.sp, right: 17.sp, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.sp),
                welcomeWidget(headingText: "Get inspired",subheading: "Add attractions to your trip, see how far they are to your hotel and more!"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Created Trips',
                      style: TextStyle(
                          fontSize: 19.8.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'ProximaNovaSemiBold',
                          color: Colors.black),
                    ),


                    AddNewTripButton(text: "Add New Trip", onPressed: (){
                      Get.to(()=>const CreateTrip2());
                    })

                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
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
                        // buttonColor: primaryColor,
                        // buttonText: "Simple",
                        share: info,
                        imageHeight: 25,
                        imageWidth: 25,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SimpleTrip(),
                            )),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 1,
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
                        share:info ,
                        imageHeight: 25,
                        imageWidth: 25,
                        // buttonColor: Color(0xff08B88E),
                        // buttonText: "Unique",
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UniqueTrip(),
                            )),
                      ),
                    );
                  },
                ),
                //
                // SizedBox(
                //   height: 20.sp,
                // ),
                // Text(
                //   'Top 10 Things to do in fx Dubai',
                //   style: TextStyle(
                //       fontSize: 19.8.sp,
                //       fontWeight: FontWeight.w600,
                //       fontFamily: 'ProximaNovaSemiBold',
                //       color: Colors.black),
                // ),
                // SizedBox(
                //   height: 20.sp,
                // ),
                // SizedBox(
                //   height: 0.63.sh,
                //   child: ListView.builder(
                //     itemCount: 2,
                //     shrinkWrap: true,
                //     // scrollDirection: Axis.horizontal,
                //     itemBuilder: (context, index) {
                //       return ResortCard(
                //         image: dubai1,
                //         title: 'Legoland Dubai Resort',
                //         date: '23/09/2023',
                //         distance: '46km',
                //         description:
                //             'Quantum computing is a type of computing where information is processed using quantum-mechanical phenomena, such as superposition and entanglement. In traditional computing, information is processed using bits, which can have a value of ',
                //       );
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

                // ResortCard(image: dubai1, title: 'Legoland Dubai Resort', date: '23/09/2023', distance: '46km', description: 'Quantum computing is a type of computing where information is processed using quantum-mechanical phenomena, such as superposition and entanglement. In traditional computing, information is processed using bits, which can have a value of ',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
