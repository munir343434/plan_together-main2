import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../utils/global_colors.dart';
import '../utils/images.dart';

Widget welcomeWidget({
  required headingText,
  required subheading,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 31.sp),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headingText,
              style: TextStyle(
                  fontSize: 21.8.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'ProximaNovaMedium',
                  color: GlobalColors.primaryColor),
            ),
            SizedBox(
              height: 5.3.sp,
            ),
            
            Container(
              width: 225,
              child: Text(
                subheading,
                overflow: TextOverflow.visible, // Set overflow behavior to wrap text
                maxLines: 2,
                style: TextStyle(
                    fontSize: 12.7.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'ProximaNovaRegular',
                    color: GlobalColors.grey,
                ),
              ),
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
  );
}
