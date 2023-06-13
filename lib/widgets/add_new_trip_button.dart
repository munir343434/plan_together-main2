
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/global_colors.dart';

class AddNewTripButton extends StatelessWidget {
  String text;
  double? width=114.sp;
  VoidCallback? onPressed;
   AddNewTripButton({Key? key,required this.text,this.width=114,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31.sp,
      width: width,
      decoration: BoxDecoration(
          color: GlobalColors.primaryColor,
          borderRadius: BorderRadius.circular(23.1.sp)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'ProximaNovaRegular',
                color: Colors.white),
          ),
          SizedBox(
            width: 3.sp,
          ),
          Icon(
            Icons.add,
            size: 12.sp,
            color: GlobalColors.white,
          )
        ],
      ),
    );
  }
}
