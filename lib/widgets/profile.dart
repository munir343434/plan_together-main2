import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/views/followers_screen.dart';
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
        ]);
  }
}


