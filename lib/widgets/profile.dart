import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/widgets/mainButton.dart';
import 'package:plan_together/widgets/text_widget.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 137,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(profileBackground),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffE1E1E1),
                  ),
                  child: Center(
                      child: Image.asset(
                    choseNewImage,
                    width: 20,
                    height: 20,
                  )),
                ),
              ),
              Positioned(
                top: 90,
                left: 14,
                child: Stack(clipBehavior: Clip.none, children: [
                  Container(
                    height: 99,
                    width: 99,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffE1E1E1),
                    ),
                    child: Center(
                      child: Image.asset(profile3),
                    ),
                  ),
                  Positioned(
                    right: -10,
                    bottom: 10,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0XFFE1E1E1)),
                      child: Center(
                        child: Image.asset(choseNewImage),
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                    text: "Cameron stewart",
                    size: 21.88,
                    color: GlobalColors.homeBlackColor,
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    TextWidget(
                        text: "France",
                        size: 12,
                        color: GlobalColors.homeBlackColor,
                        fontWeight: FontWeight.w600),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(flag),
                    SizedBox(height: 19),
                  ],
                ),
                SizedBox(height: 15,)
              ],
            ),
          ),
          SizedBox(
            height: 70,
            child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 0.4,
                ),
                children: List.generate(
                  3,
                  (index) => _gridTile('1200', 'Followers'),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14,right: 14),
            child: Row(
              children: [
                Expanded(
                  child: MainButton(
                      height: 50,
                      color: GlobalColors.primaryColor,
                      text: "Follow",
                      textColor: Colors.white,
                      textSize: 16,
                      textFont: FontWeight.w700),
                ),
                  SizedBox(width: 6,),
                  Expanded(
                    child: MainButton(
                        height: 50,
                        color: GlobalColors.plusButton,
                        text: "Message",
                        textColor: Colors.white,
                        textSize: 16,
                        textFont: FontWeight.w700),
                )
              ],
            ),
          ),
        ]);
  }
}

Widget _gridTile(String number, String type) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black54,
        width: 0.3,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          number,
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xff222B45)),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          type,
          style: TextStyle(
            fontSize: 12,
            color: Color(0xff6B779A),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
