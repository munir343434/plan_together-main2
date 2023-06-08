import 'dart:ui';

import 'package:flutter/cupertino.dart';

Widget TextWidget(
    {required String text,
    required double size,
    double?  lineHeight,
    required Color color,
    required FontWeight fontWeight}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      color: color,
      height: lineHeight,
      fontWeight: fontWeight,

    ),
  );
}
