
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/global_colors.dart';

class AddNewTripButton extends StatelessWidget {
  String text;
  Color? textColor;
  double? width=114.sp;
  VoidCallback? onPressed;
  Color? buttonColor;

   AddNewTripButton({Key? key,required this.text,this.width=114,required this.onPressed,this.buttonColor, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31.sp,
      width: width,
      decoration: BoxDecoration(
          color:buttonColor==null? GlobalColors.primaryColor:buttonColor,
          borderRadius: BorderRadius.circular(23.1.sp)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize:textColor==null? 11.sp:15,
                fontWeight: FontWeight.w600,
                fontFamily: 'ProximaNovaRegular',
                color:textColor==null? Colors.white:textColor),
          ),
          SizedBox(
            width: 3.sp,
          ),
          Icon(
            Icons.add,
            size:textColor==null? 12.sp:20,
            color:textColor==null? GlobalColors.white:GlobalColors.primaryColor,
          )
        ],
      ),
    );
  }
}
