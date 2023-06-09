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

  List<String> itemList = [];

  // List to store the added items
  void addItem(String newItem) {
    setState(() {
      itemList.add(newItem); // Add the new item to the list
    });
  }

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
                            text: "Andrew Sams",
                            size: 18.53,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        TextWidget(
                            text: "Admin",
                            size: 12.85,
                            color: GlobalColors.primaryColor,
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
                      color: GlobalColors.primaryColor,
                      fontWeight: FontWeight.w600)
                ]),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AddmoreItems(img: p2, name: "Andrew Sams", role: "Added: 3 Things"),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                  text: "Add New Item",
                                  size: 16,
                                  color: Color(0xff1B1F31),
                                  fontWeight: FontWeight.w700),
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset(cancel))
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          )
                        ],
                      ),
                      content: Container(
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                                text: "Item Name",
                                size: 16,
                                color: Color(0xff2F2F2F),
                                fontWeight: FontWeight.w400),
                            SizedBox(
                              height: 10,
                            ),
                            getTextField(
                                height: 39,
                                borderRadius: 0,
                                controller: textFieldController,
                                contentPadding: 20)
                          ],
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: MainButton(
                              height: 58,
                              color: GlobalColors.primaryColor,
                              text: "Add",
                              textColor: Colors.white,
                              textSize: 15,
                              onPressed: () {
                                String newItem = textFieldController.text;
                                addItem(newItem);
                                Navigator.of(context).pop();
                                print(newItem);
                              },
                              textFont: FontWeight.w700),
                        ),
                      ],
                    );
                  },
                );
              },
              child: AddmoreItems(
                  img: p3, name: "Cameron ash", role: "Added: 3 Things")),
          SizedBox(
            height: 10,
          ),
          for (var item in itemList)
            Container(
              padding: EdgeInsets.only(left: 12, right: 12),
              height: 53,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: valuefirst == true
                      ? Color.fromRGBO(32, 185, 252, 0.07)
                      : Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: item,
                    size: 15,
                    color: GlobalColors.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          activeColor: GlobalColors.primaryColor,
                          value: this.valuefirst,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return const BorderSide(
                                    width: 2, color: Colors.transparent);
                              }
                              return const BorderSide(
                                width: 1,
                                color: Colors.black,
                              );
                            },
                          ),
                          onChanged: (bool? value) {
                            setState(() {
                              this.valuefirst = value!;
                            });
                          },
                        ),
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        color: Color(0xff666666),
                      )
                    ],
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget builNewRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12),
      height: 53,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: valuefirst == true
              ? Color.fromRGBO(32, 185, 252, 0.07)
              : Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: textFieldController.text,
            size: 15,
            color: GlobalColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
          Row(
            children: [
              Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: GlobalColors.primaryColor,
                  value: this.valuefirst,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  side: MaterialStateBorderSide.resolveWith(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return const BorderSide(
                            width: 2, color: Colors.transparent);
                      }
                      return const BorderSide(
                        width: 1,
                        color: Colors.black,
                      );
                    },
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      this.valuefirst = value!;
                    });
                  },
                ),
              ),
              Icon(
                Icons.more_vert_outlined,
                color: Color(0xff666666),
              )
            ],
          )
        ],
      ),
    );
  }
}
