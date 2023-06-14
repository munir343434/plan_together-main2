import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plan_together/views/Profile_screen.dart';
import 'package:plan_together/views/add_trips_screen.dart';
import 'package:plan_together/views/followers_screen.dart';
import 'package:plan_together/views/rating_for_trip.dart';
import 'package:plan_together/views/splash_screen.dart';
import 'package:plan_together/views/trips_screen.dart';
import 'package:plan_together/widgets/profile.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 847),
      builder: 
      (BuildContext context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TripRatingScreen(),
      ),
    );
  }
}
