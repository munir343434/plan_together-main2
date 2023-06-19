import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';

Widget textField({
  required text,
  final sufixIcon,
  final prefixIcon,
}) {
  return TextField(
      decoration:  InputDecoration(
    filled: true, //<-- SEE HERE
    fillColor: Color(0xffF0F3F6),
    hintText: text,
    labelStyle: const TextStyle(
        fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xffADB3BC)),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(25.0),
    ),
    prefixIcon: Icon(
      prefixIcon,
      size: 30,
      color: primaryColor,
    ),
  ));
}
