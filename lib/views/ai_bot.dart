import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/views/create_trip.dart';
import 'package:plan_together/widgets/add_new_trip_button.dart';
import 'package:plan_together/widgets/chat_bot.dart';
import 'package:plan_together/widgets/recent_trips.dart';
import 'package:plan_together/widgets/text_widget.dart';
import 'package:plan_together/widgets/welcome_widget.dart';

import '../constant/constant.dart';
import '../utils/global_colors.dart';

class AiBot extends StatefulWidget {
  const AiBot({Key? key}) : super(key: key);

  @override
  State<AiBot> createState() => _AiBotState();
}

class _AiBotState extends State<AiBot> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalColors.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 17, top: 25.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: "Recent Trips",
                        size: 19.88,
                        color: GlobalColors.homeBlackColor,
                        fontWeight: FontWeight.w600),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateTrip(),
                          )),
                      child: Padding(
                        padding: EdgeInsets.only(right: 17),
                        child: AddNewTripButton(text: "Add New Trip",onPressed: (){},)
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 220.sp,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 10.sp),
                        child: RecentTrips(
                            img: dubai1,
                            cityName: "Milano Park",
                            location: "Sant Paulo, Milan, Italy"),
                      );
                    },
                  ),
                ),

                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children:[
                //       RecentTrips(img: dubai1, cityName: "Milano Park", location: "Sant Paulo, Milan, Italy"),
                //       SizedBox(width: 10,),
                //       RecentTrips(img: dubai1, cityName: "Dubai Gulfark", location: "Dubai Gulf, Gulf, Dubai"),
                //       SizedBox(width: 10,),
                //       RecentTrips(img: dubai1, cityName: "Milano Park", location: "Sant Paulo, Milan, Italy"),
                //  ] ),
                // ),
                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                          text: "Chat With AI Bot",
                          size: 19,
                          color: GlobalColors.homeBlackColor,
                          fontWeight: FontWeight.w600),
                      SizedBox(
                        height: 26,
                      ),
                      ChatBot(
                        color: Color(0xff9547D2),
                        text: "Explain quantum computing in simple terms",
                        image: Y,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ChatBot(
                          color: Color(0xff10A37F),
                          text:
                              "Quantum computing is a type of computing where information is processed using quantum-mechanical phenomena, such as superposition and entanglement. In traditional computing, information is processed using bits, which can have a value of",
                          image: "assets/images/chatgpt.png"),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 17),
                  height: 48,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.13),
                        offset: Offset(0, 3),
                        blurRadius: 18,
                      ),
                    ],
                    // border: Border.all(
                    //   color: Color(0XFFD1D5DB),
                    //   width: 1.0,
                    // ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: 'Write prompt',
                      hintStyle: TextStyle(
                        color: Color(0xFF9B9B9B),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'ProximaNovaMedium',
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD1D5DB), width: 1.sp),
                        // borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD1D5DB), width: 1.sp),
                        // borderRadius: BorderRadius.circular(8.0),
                      ),
                      suffixIcon: Image.asset(
                        'assets/icons/send.png',
                        height: 17,
                        width: 17,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
