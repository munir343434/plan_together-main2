import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class HourlyWeather extends StatelessWidget {
  HourlyWeather(
      {Key? key,
      this.time,
      this.image,
      this.temp,
      this.onPressed})
      : super(key: key);

  String? image, date, time, temp, description, lastUpdated;
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Card(
          elevation: 3,
          shadowColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.sp),
          ),
          child: Container(
            height: 107.sp,
            width: 78.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.sp),
              color: skyBlue
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Image.asset('${image}', height: 40.sp, width: 40.sp, fit: BoxFit.contain,),
                    Text('${temp}°', style: TextStyle(fontSize: 14.sp, fontFamily: 'SFProMedium', fontWeight: FontWeight.w600, color: Colors.white),),
                    Text('${time}', style: TextStyle(fontSize: 12.sp, fontFamily: 'SFProRegular', fontWeight: FontWeight.w400, color: Colors.white),),
                ]
              ),
            ),
          ),
        ));
  }
}
