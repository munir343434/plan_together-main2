import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plan_together/constant/constant.dart';
import 'package:plan_together/widgets/add_new_trip_button.dart';
import 'package:plan_together/widgets/alert_dialog.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../utils/global_colors.dart';

class AddmoreItems extends StatefulWidget {
  String img, name, role;

  AddmoreItems({
    Key? key,
    required this.img,
    required this.name,
    required this.role,
  }) : super(key: key);

  @override
  State<AddmoreItems> createState() => _AddmoreItemsState();
}

class _AddmoreItemsState extends State<AddmoreItems> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  List<String> itemList = [];
  int selectedCheckboxIndex = -1;
bool selectedAll=false;
  List<String> selecteditemList = [];
  // List to store the added items
  void addItem(String newItem) {
    setState(() {
      itemList.add(newItem); // Add the new item to the list
    });
  }

  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18, left: 14, right: 14, bottom: 18),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
          boxShadow: [defaultShadow]),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  widget.img,
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
                      text: widget.name,
                      size: 18.53,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  TextWidget(
                      text: widget.role,
                      size: 12.85,
                      color: addMoreItems,
                      fontWeight: FontWeight.w400),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
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
                  text: "Shampoo",
                  size: 15,
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1,
                      child: Checkbox(
                        activeColor: primaryColor,
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
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12),
            height: 53,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: valuesecond == true
                    ? Color.fromRGBO(32, 185, 252, 0.07)
                    : Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Sun screen ",
                  size: 15,
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1,
                      child: Checkbox(
                        activeColor: primaryColor,
                        value: this.valuesecond,
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
                            this.valuesecond = value!;
                          });
                        },
                      ),
                    ),
                    Icon(
                      Icons.more_vert_outlined,
                      color: Color(0xff666666),
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12),
            height: 53,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: valuethird == true
                    ? Color.fromRGBO(32, 185, 252, 0.07)
                    : Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Camera",
                  size: 15,
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1,
                      child: Checkbox(
                        activeColor: primaryColor,
                        value: this.valuethird,
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
                            this.valuethird = value!;
                          });
                        },
                      ),
                    ),
                    Icon(
                      Icons.more_vert_outlined,
                      color: Color(0xff666666),
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: itemList.length,
            itemBuilder: (BuildContext context, int index) {
              final item = itemList[index];
              bool checkboxStateList = selectedCheckboxIndex == index;
              return Container(
                padding: EdgeInsets.only(left: 12, right: 12),
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: checkboxStateList
                      ? Color.fromRGBO(32, 185, 252, 0.07)
                      : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: item,
                      size: 15,
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1,
                          child: Checkbox(
                            activeColor: primaryColor,
                            value:checkboxStateList || selectedAll,
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
                                if (checkboxStateList) {
                                  // Uncheck the checkbox
                                  selectedCheckboxIndex = -1;
                                } else {
                                  // Check the checkbox

                                  selectedCheckboxIndex = index;
                                }
                              });
                            },
                          ),
                        ),
                        Icon(
                          Icons.more_vert_outlined,
                          color: Color(0xff666666),
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomAlertDialog(
                    addItem: addItem,
                    newItem: textFieldController.text,
                    // Pass the addItem function
                  );
                },
              );
            },
            child: AddNewTripButton(
              text: "Add More Items",
              width: 132,
              onPressed: () {
                print("tapped");
              },
            ),
          ),
        ],
      ),
    );
  }
}
