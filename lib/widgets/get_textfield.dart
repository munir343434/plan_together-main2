import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/utils/global_colors.dart';

Widget getTextField(
    {String? hint,
    String? label,
    String? image,
    IconData? iconData,
    double height = 64,
      int maxline=1,
      double? contentPadding,
      double?borderRadius,
    TextEditingController? controller,
    Function(String)? onChanged,
    TextInputType? InputType,
    bool? isEnabled,
    FormFieldValidator? validator}) {
  return SizedBox(
    height: height,
    child: TextFormField(
      maxLines: maxline,
        validator: validator,
        controller: controller,
        onChanged: onChanged,
        keyboardType: InputType,
        enabled: isEnabled == null ? true : isEnabled,
        style: TextStyle(
            color: Colors.black,
            fontSize: 15.sp,
            fontFamily: 'ProximaNovaRegular',
            fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          hintText: hint != null ? hint : "",
          contentPadding:contentPadding==null?
              EdgeInsets.symmetric(vertical: 23.sp, horizontal: 26.sp):EdgeInsets.symmetric(horizontal: contentPadding.sp,),
          filled: true,
          labelText: label != null ? label : "",
          labelStyle: TextStyle(color: GlobalColors.grey),
          fillColor: Colors.white,
          prefixIcon: image == null
              ? null
              : Container(
                  height: 15.sp,
                  width: 15.sp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        image,
                        height: 23.sp,
                        width: 21.sp,
                        fit: BoxFit.contain,
                      ),
                    ],
                  )),
          suffixIcon: iconData == null
              ? null
              : Icon(
                  iconData,
                  color: Colors.black,
                  size: 20,
                ),
          hintStyle: TextStyle(
              color: Color(0xFF828F9C),
              fontSize: 15.sp,
              fontFamily: 'ProximaNovaRegular',
              fontWeight: FontWeight.w400),
          enabledBorder: OutlineInputBorder(
              borderRadius: borderRadius==null?BorderRadius.circular(48.sp):BorderRadius.circular(borderRadius),
              borderSide:
                  BorderSide(color: GlobalColors.border, width: 1.6.sp)),
          focusedBorder: OutlineInputBorder(
              borderRadius:borderRadius==null?BorderRadius.circular(48.sp):BorderRadius.circular(borderRadius),
              borderSide:
                  BorderSide(color: GlobalColors.border, width: 1.6.sp)),
        )),
  );
}

Widget getPasswordTextField(
    {required String hint,
    String? image,
    TextEditingController? controller,
    Function(String)? onChanged,
    TextInputType? InputType,
    bool? isEnabled,
    bool? isObsecured,
    FormFieldValidator? validator}) {
  return TextFormField(
    validator: validator,
    controller: controller,
    onChanged: onChanged,
    keyboardType: InputType,
    enabled: isEnabled == null ? true : isEnabled,
    style: const TextStyle(color: Color(0xFF9A9CA3)),
    decoration: InputDecoration(
        suffixIcon: isObsecured == true
            ? Icon(
                Icons.visibility,
                color: Color(0xFF9A9CA3),
              )
            : Icon(
                Icons.visibility_off,
                color: Color(0xFF9A9CA3),
              ),
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        prefixIcon: image == null
            ? null
            : Container(
                height: 15.sp,
                width: 15.sp,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      image,
                      height: 23.sp,
                      width: 21.sp,
                      fit: BoxFit.contain,
                    ),
                  ],
                )),
        hintStyle: TextStyle(color: Color(0xFF9A9CA3), fontSize: 12.sp),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white))),
  );
}

Widget getTextFieldMulti(
    {required String hint,
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? isEnabled,
    FormFieldValidator? validator}) {
  return TextFormField(
    validator: validator,
    controller: controller,
    onChanged: onChanged,
    enabled: isEnabled == null ? true : isEnabled,
    style: const TextStyle(color: Color(0xFF9A9CA3)),
    maxLines: null,
    minLines: 4,
    keyboardType: TextInputType.multiline,
    decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color: Color(0xFF9A9CA3), fontSize: 12.sp),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white))),
  );
}
