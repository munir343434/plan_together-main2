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
          AddmoreItems(
            img: p2,
            name: "Andrew Sams",
            role: "Admin",

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
