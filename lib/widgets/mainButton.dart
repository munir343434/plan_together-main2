import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/utils/global_colors.dart';

class MainButton extends StatefulWidget {
  Border? border;
  String text;
  String? icon;
  double height;
  double? width;
  Color textColor;
  double textSize;
  FontWeight textFont;
  Color color;
  String? smallText;
  Function? callback;

  MainButton(
      {Key? key,
      required this.height,
      this.width,
      required this.color,
      required this.text,
      required this.textColor,
      required this.textSize,
      required this.textFont,
      this.icon,
      this.smallText,
        this.callback,
      this.border})
      : super(key: key);

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: widget.border,
          color: widget.color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 5,
          ),
          widget.icon != null
              ? Row(
                  children: [
                    Image.asset(
                      '${widget.icon}',
                      height: 24.sp,
                      width: 24.sp,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              : SizedBox.shrink(),
          widget.smallText == null
              ? Text(
                  '${widget.text}',
                  style: TextStyle(
                      fontSize: widget.textSize,
                      color: widget.textColor,
                      fontWeight: widget.textFont),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.text}',
                      style: TextStyle(
                          fontSize: widget.textSize,
                          color: widget.textColor,
                          fontWeight: widget.textFont),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${widget.smallText}',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
        ],
      ),
    );
  }
}
