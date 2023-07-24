import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/constant/constant.dart';
import 'package:plan_together/widgets/add_new_trip_button.dart';
import 'package:plan_together/widgets/alert_dialog.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../utils/global_colors.dart';
import '../utils/images.dart';

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
  List<String> _images = [p1, p2, p3, p4, p1, p2, p3, p4, p1];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
            boxShadow: [defaultShadow]),
        child: Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Row(
              children: [
                Container(
                  height: 38,
                  width: 38,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(
                    widget.img,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
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
            subtitle: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 0),
                child: FlutterImageStack(
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

            children: [
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12),
                height: 53,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: valuefirst == true
                        ? const Color.fromRGBO(32, 185, 252, 0.07)
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
                            value: valuefirst,
                            shape: const RoundedRectangleBorder(
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
                        const Icon(
                          Icons.more_vert_outlined,
                          color: Color(0xff666666),
                          size: 15,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12),
                height: 53,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: valuesecond == true
                        ? const Color.fromRGBO(32, 185, 252, 0.07)
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
                            shape: const RoundedRectangleBorder(
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
                        const Icon(
                          Icons.more_vert_outlined,
                          color: Color(0xff666666),
                          size: 15,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12),
                height: 53,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: valuethird == true
                        ? const Color.fromRGBO(32, 185, 252, 0.07)
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
                            shape: const RoundedRectangleBorder(
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
                        const Icon(
                          Icons.more_vert_outlined,
                          color: Color(0xff666666),
                          size: 15,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AddNewTripButton(
                text: "Add More Items",
                width: 132,
                onPressed: () {
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
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ));
    // return Container(
    //   padding: EdgeInsets.only(top: 18, left: 14, right: 14, bottom: 18),
    //   decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: BorderRadius.circular(9),
    //       boxShadow: [defaultShadow]),
    //   child: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Container(
    //             height: 38,
    //             width: 38,
    //             decoration: BoxDecoration(shape: BoxShape.circle),
    //             child: Image.asset(
    //               widget.img,
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           SizedBox(
    //             width: 10,
    //           ),
    //           Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               TextWidget(
    //                   text: widget.name,
    //                   size: 18.53,
    //                   color: Colors.black,
    //                   fontWeight: FontWeight.w600),
    //               TextWidget(
    //                   text: widget.role,
    //                   size: 12.85,
    //                   color: addMoreItems,
    //                   fontWeight: FontWeight.w400),
    //             ],
    //           )
    //         ],
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Container(
    //         padding: EdgeInsets.only(left: 12, right: 12),
    //         height: 53,
    //         decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(5),
    //             color: valuefirst == true
    //                 ? Color.fromRGBO(32, 185, 252, 0.07)
    //                 : Colors.white),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             TextWidget(
    //               text: "Shampoo",
    //               size: 15,
    //               color: primaryColor,
    //               fontWeight: FontWeight.w600,
    //             ),
    //             Row(
    //               children: [
    //                 Transform.scale(
    //                   scale: 1,
    //                   child: Checkbox(
    //                     activeColor: primaryColor,
    //                     value: this.valuefirst,
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.all(
    //                         Radius.circular(5.0),
    //                       ),
    //                     ),
    //                     side: MaterialStateBorderSide.resolveWith(
    //                       (Set<MaterialState> states) {
    //                         if (states.contains(MaterialState.selected)) {
    //                           return const BorderSide(
    //                               width: 2, color: Colors.transparent);
    //                         }
    //                         return const BorderSide(
    //                           width: 1,
    //                           color: Colors.black,
    //                         );
    //                       },
    //                     ),
    //                     onChanged: (bool? value) {
    //                       setState(() {
    //                         this.valuefirst = value!;
    //                       });
    //                     },
    //                   ),
    //                 ),
    //                 Icon(
    //                   Icons.more_vert_outlined,
    //                   color: Color(0xff666666),
    //                   size: 15,
    //                 )
    //               ],
    //             )
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: 15,
    //       ),
    //       Container(
    //         padding: EdgeInsets.only(left: 12, right: 12),
    //         height: 53,
    //         decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(5),
    //             color: valuesecond == true
    //                 ? Color.fromRGBO(32, 185, 252, 0.07)
    //                 : Colors.white),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             TextWidget(
    //               text: "Sun screen ",
    //               size: 15,
    //               color: primaryColor,
    //               fontWeight: FontWeight.w600,
    //             ),
    //             Row(
    //               children: [
    //                 Transform.scale(
    //                   scale: 1,
    //                   child: Checkbox(
    //                     activeColor: primaryColor,
    //                     value: this.valuesecond,
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.all(
    //                         Radius.circular(5.0),
    //                       ),
    //                     ),
    //                     side: MaterialStateBorderSide.resolveWith(
    //                       (Set<MaterialState> states) {
    //                         if (states.contains(MaterialState.selected)) {
    //                           return const BorderSide(
    //                               width: 2, color: Colors.transparent);
    //                         }
    //                         return const BorderSide(
    //                           width: 1,
    //                           color: Colors.black,
    //                         );
    //                       },
    //                     ),
    //                     onChanged: (bool? value) {
    //                       setState(() {
    //                         this.valuesecond = value!;
    //                       });
    //                     },
    //                   ),
    //                 ),
    //                 Icon(
    //                   Icons.more_vert_outlined,
    //                   color: Color(0xff666666),
    //                   size: 15,
    //                 )
    //               ],
    //             )
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: 15,
    //       ),
    //       Container(
    //         padding: EdgeInsets.only(left: 12, right: 12),
    //         height: 53,
    //         decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(5),
    //             color: valuethird == true
    //                 ? Color.fromRGBO(32, 185, 252, 0.07)
    //                 : Colors.white),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             TextWidget(
    //               text: "Camera",
    //               size: 15,
    //               color: primaryColor,
    //               fontWeight: FontWeight.w600,
    //             ),
    //             Row(
    //               children: [
    //                 Transform.scale(
    //                   scale: 1,
    //                   child: Checkbox(
    //                     activeColor: primaryColor,
    //                     value: this.valuethird,
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.all(
    //                         Radius.circular(5.0),
    //                       ),
    //                     ),
    //                     side: MaterialStateBorderSide.resolveWith(
    //                       (Set<MaterialState> states) {
    //                         if (states.contains(MaterialState.selected)) {
    //                           return const BorderSide(
    //                               width: 2, color: Colors.transparent);
    //                         }
    //                         return const BorderSide(
    //                           width: 1,
    //                           color: Colors.black,
    //                         );
    //                       },
    //                     ),
    //                     onChanged: (bool? value) {
    //                       setState(() {
    //                         this.valuethird = value!;
    //                       });
    //                     },
    //                   ),
    //                 ),
    //                 Icon(
    //                   Icons.more_vert_outlined,
    //                   color: Color(0xff666666),
    //                   size: 15,
    //                 )
    //               ],
    //             )
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: 15,
    //       ),
    //       ListView.builder(
    //         shrinkWrap: true,
    //         itemCount: itemList.length,
    //         itemBuilder: (BuildContext context, int index) {
    //           final item = itemList[index];
    //           bool checkboxStateList = selectedCheckboxIndex == index;
    //           return Container(
    //             padding: EdgeInsets.only(left: 12, right: 12),
    //             height: 53,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(5),
    //               color: checkboxStateList
    //                   ? Color.fromRGBO(32, 185, 252, 0.07)
    //                   : Colors.white,
    //             ),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 TextWidget(
    //                   text: item,
    //                   size: 15,
    //                   color: primaryColor,
    //                   fontWeight: FontWeight.w600,
    //                 ),
    //                 Row(
    //                   children: [
    //                     Transform.scale(
    //                       scale: 1,
    //                       child: Checkbox(
    //                         activeColor: primaryColor,
    //                         value:checkboxStateList || selectedAll,
    //                         shape: RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.all(
    //                             Radius.circular(5.0),
    //                           ),
    //                         ),
    //                         side: MaterialStateBorderSide.resolveWith(
    //                               (Set<MaterialState> states) {
    //                             if (states.contains(MaterialState.selected)) {
    //                               return const BorderSide(
    //                                   width: 2, color: Colors.transparent);
    //                             }
    //                             return const BorderSide(
    //                               width: 1,
    //                               color: Colors.black,
    //                             );
    //                           },
    //                         ),
    //                         onChanged: (bool? value) {
    //                           setState(() {
    //                             if (checkboxStateList) {
    //                               // Uncheck the checkbox
    //                               selectedCheckboxIndex = -1;
    //                             } else {
    //                               // Check the checkbox
    //
    //                               selectedCheckboxIndex = index;
    //                             }
    //                           });
    //                         },
    //                       ),
    //                     ),
    //                     Icon(
    //                       Icons.more_vert_outlined,
    //                       color: Color(0xff666666),
    //                       size: 15,
    //                     )
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           );
    //         },
    //       ),
    //       SizedBox(
    //         height: 15,
    //       ),
    //       InkWell(
    //         onTap: () {
    //           showDialog(
    //             context: context,
    //             builder: (BuildContext context) {
    //               return CustomAlertDialog(
    //                 addItem: addItem,
    //                 newItem: textFieldController.text,
    //                 // Pass the addItem function
    //               );
    //             },
    //           );
    //         },
    //         child: AddNewTripButton(
    //           text: "Add More Items",
    //           width: 132,
    //           onPressed: () {
    //             print("tapped");
    //           },
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }

  bool valuethird = false;
  List<String> itemList = [];
  int selectedCheckboxIndex = -1;
  bool selectedAll = false;

  List<String> selecteditemList = [];

  // List to store the added items
  void addItem(String newItem) {
    setState(() {
      itemList.add(newItem); // Add the new item to the list
    });
  }

  TextEditingController textFieldController = TextEditingController();
}
