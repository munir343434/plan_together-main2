import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/widgets/add_new_trip_button.dart';
import 'package:plan_together/widgets/chat_bot.dart';
import 'package:plan_together/widgets/recent_trips.dart';
import 'package:plan_together/widgets/text_widget.dart';
import '../utils/global_colors.dart';
import 'create_trip2.dart';

class AiBot extends StatefulWidget {
  const AiBot({Key? key}) : super(key: key);

  @override
  State<AiBot> createState() => _AiBotState();
}

class _AiBotState extends State<AiBot> {
  final GlobalKey widgetKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17, top: 25.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                                text: "Recent Trips",
                                size: 19.88,
                                color: homeBlackColor,
                                fontWeight: FontWeight.w600),
                            Padding(
                                padding: const EdgeInsets.only(right: 17),
                                child: AddNewTripButton(
                                  text: "Add New Trip",
                                  onPressed: () {
                                    Get.to(() => const CreateTrip2());
                                  },
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 220.sp,
                          child: ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(right: 10.sp),
                                child: RecentTrips(
                                    img: dubai1,
                                    cityName: "Milano Park",
                                    location: "Sant Paulo, Milan, Italy"),
                              );
                            },
                          ),
                        ),

                        // SingleChildScrollView(
                        //   scrollDirection: Axis.horizontal,
                        //   child: Row(
                        //     children:[
                        //       RecentTrips(img: dubai1, cityName: "Milano Park", location: "Sant Paulo, Milan, Italy"),
                        //       SizedBox(width: 10,),
                        //       RecentTrips(img: dubai1, cityName: "Dubai Gulfark", location: "Dubai Gulf, Gulf, Dubai"),
                        //       SizedBox(width: 10,),
                        //       RecentTrips(img: dubai1, cityName: "Milano Park", location: "Sant Paulo, Milan, Italy"),
                        //  ] ),
                        // ),
                        const SizedBox(
                          height: 26,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                  text: "Chat With AI Bot",
                                  size: 19,
                                  color: homeBlackColor,
                                  fontWeight: FontWeight.w600),
                              const SizedBox(
                                height: 26,
                              ),
                              const ChatBot(
                                color: Color(0xff9547D2),
                                text:
                                    "Explain quantum computing in simple terms",
                                image: Y,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                key: widgetKey,
                                onLongPress: () {
                                  showPopupMenu(context,widgetKey);
                                },
                                child: const ChatBot(
                                    color: Color(0xff10A37F),
                                    text:
                                        "Quantum computing is a type of computing where information is processed using quantum-mechanical phenomena, such as superposition and entanglement. In traditional computing, information is processed using bits, which can have a value of",
                                    image: "assets/images/chatgpt.png"),
                              ),
                              const SizedBox(
                                height: 90,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 17, bottom: 15, left: 17),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.13),
                    offset: Offset(0, 3),
                    blurRadius: 18,
                  ),
                ],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  hintText: 'Write prompt',
                  hintStyle: TextStyle(
                    color: const Color(0xFF9B9B9B),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'ProximaNovaMedium',
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: const Color(0xFFD1D5DB), width: 1.sp),
                    // borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: const Color(0xFFD1D5DB), width: 1.sp),
                    // borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: Image.asset(
                    'assets/icons/send.png',
                    height: 17,
                    width: 17,
                    color: const Color(0xffACACBE),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showPopupMenu(BuildContext context, GlobalKey widgetKey) async {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    final RenderBox box = widgetKey.currentContext?.findRenderObject() as RenderBox;
    final Offset targetPosition = box.localToGlobal(Offset.zero, ancestor: overlay);

    final popupItems = ['Add to trip destination', 'Copy Text', 'Select All','Cancel'];

    final selectedValue = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(targetPosition.dx, targetPosition.dy, 0, 0),
      items: popupItems.map((item) {
        return PopupMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
    );

    // Handle the selected value (if needed)
    if (selectedValue != null) {
      print('Selected item: $selectedValue');
    }
  }
}
