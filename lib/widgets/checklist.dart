import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/widgets/add_more_item.dart';
import 'package:plan_together/widgets/get_textfield.dart';
import 'package:plan_together/widgets/mainButton.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../constant/constant.dart';
import '../utils/global_colors.dart';

class CheckList extends StatefulWidget {
  CheckList({Key? key}) : super(key: key);

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  List<String> _images = [p1, p2, p3, p4, p1, p2, p3, p4, p1];


  int selectedCheckboxIndex = -1;
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 14),
            height: 114,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [defaultShadow]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(
                        p4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                            text: "Andrew Samss",
                            size: 18.53,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        TextWidget(
                            text: "Admin",
                            size: 12.85,
                            color: primaryColor,
                            fontWeight: FontWeight.w600),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 17.sp,
                ),
                Row(children: [
                  FlutterImageStack(
                    imageSource: ImageSource.Asset,
                    imageList: _images,
                    // showTotalCount: true,
                    totalCount: 7,
                    itemRadius: 26.sp,
                    // Radius of each images
                    itemCount: 7,
                    // Maximum number of images to be shown in stack
                    itemBorderWidth: 0.05, // Border width around the images
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextWidget(
                      text: "7 People Going",
                      size: 12.85,
                      color: primaryColor,
                      fontWeight: FontWeight.w600)
                ]),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AddmoreItems(
            img: p2,
            name: "Andrew Sams",
            role: "Added: 3 Things",

          ),
          SizedBox(
            height: 10,
          ),
          AddmoreItems(
            img: p3,
            name: "Cameron ash",
            role: "Added: 3 Things",

          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}
