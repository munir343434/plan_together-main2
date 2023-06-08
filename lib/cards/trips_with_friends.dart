import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:plan_together/constant/constant.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TripsWithFriends extends StatelessWidget {
  TripsWithFriends(
      {Key? key,
      this.location,
      this.timeFrom,
      this.dateFrom,
      this.timeTo,
      this.dateTo,
      this.image,
      this.onPressed})
      : super(key: key);

  String? location, image, dateFrom, timeFrom, timeTo, dateTo;
  VoidCallback? onPressed;
  List<String> _images = [p1, p2, p3, p4, p1, p2, p3, p4, p1];
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [defaultShadow],
            borderRadius: BorderRadius.circular(23.sp)
          ),
          child: Padding(
            padding: EdgeInsets.only(
                left: 28.sp, top: 27.sp, right: 12.6.sp, bottom: 28.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trips with friends',
                      style: TextStyle(
                          fontSize: 18.5.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'ProximaNovaSemiBold',
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 7.5.sp,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 15.sp,
                          color: GlobalColors.lightGrey,
                        ),
                        SizedBox(height: 7.4.sp),
                        Text(
                          '${location}',
                          style: TextStyle(
                              fontSize: 13.2.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'ProximaNovaMedium',
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.5.sp,
                    ),
                    FlutterImageStack(
                      imageSource: ImageSource.Asset,
                      imageList: _images,
                      // showTotalCount: true,
                      totalCount: 7,
                      itemRadius: 26.sp, // Radius of each images
                      itemCount:
                          7, // Maximum number of images to be shown in stack
                      itemBorderWidth: 0.05, // Border width around the images
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      children: [
                        Text(
                          '${dateFrom}',
                          style: TextStyle(
                              fontSize: 9.7.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'ProximaNovaMedium',
                              color: GlobalColors.darkBlue),
                        ),
                        SizedBox(
                          width: 1.sp,
                        ),
                        Text(
                          '${timeFrom}',
                          style: TextStyle(
                              fontSize: 9.7.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'ProximaNovaMedium',
                              color: GlobalColors.darkBlue),
                        ),
                        SizedBox(
                          width: 3.sp,
                        ),
                        Image.asset(
                          line,
                          height: 4.5.sp,
                          width: 19.sp,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: 7.sp,
                        ),
                        Text(
                          '${dateTo}',
                          style: TextStyle(
                              fontSize: 9.7.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'ProximaNovaMedium',
                              color: GlobalColors.darkBlue),
                        ),
                        SizedBox(
                          width: 1.sp,
                        ),
                        Text(
                          '${timeTo}',
                          style: TextStyle(
                              fontSize: 9.7.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'ProximaNovaMedium',
                              color: GlobalColors.darkBlue),
                        ),
                        SizedBox(
                          width: 3.sp,
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset(
                  info,
                  height: 25.4.sp,
                  width: 25.4.sp,
                  fit: BoxFit.contain,
                )
              ],
            ),
          ),
        ));
  }
}
