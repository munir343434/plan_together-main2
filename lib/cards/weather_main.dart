import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class WeatherMain extends StatelessWidget {
  WeatherMain(
      {Key? key,
      this.time,
      this.date,
      this.image,
      this.temp,
      this.description,
      this.lastUpdated,
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
          shadowColor: GlobalColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.sp),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.sp),
              gradient: const LinearGradient(
                colors: [Color(0xFF4F7FFA), Color(0xFF335FD1)],
              ),
              // color: GlobalColors.textfield
            ),
            child: Padding(
                padding: EdgeInsets.only(
                    left: 24.sp, top: 24.sp, right: 27.sp, bottom: 23.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${date}',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFProRegular',
                              color: Colors.white),
                        ),
                        Text(
                          '${time}',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFProRegular',
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          '${image}',
                          height: 90.sp,
                          width: 90.sp,
                          fit: BoxFit.cover,
                        ),
                        // SizedBox(
                        //   width: 12.sp,
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.sp),
                            Text(
                              '${temp}° C',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SFProRegular',
                                  color: Colors.white),
                            ),
                            SizedBox(height: 4.sp,),
                            Text(
                              '${description}',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'SFProMedium',
                                  color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                    // SizedBox(height: 24.sp,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Last updated ${lastUpdated}',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SFProRegular',
                              color: Colors.white),
                        ),
                        SizedBox(width: 19.6.sp,),
                        Icon(Icons.refresh_sharp, size: 15.sp,color: Colors.white,),
                      ],
                    )
                  ],
                )),
          ),
        ));
  }
}
