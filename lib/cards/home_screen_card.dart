import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:plan_together/constant/constant.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/views/comments_screen.dart';
import 'package:plan_together/widgets/text_widget.dart';

// ignore: must_be_immutable
class HomeScreenCard extends StatefulWidget {
  HomeScreenCard({
    Key? key,
    this.hearts,
    this.comments,
    this.rating,
    this.image,
    this.description,
    this.onPressed,
    this.username,
  }) : super(key: key);

  String? hearts, comments, rating, image, description, username;
  VoidCallback? onPressed;

  @override
  State<HomeScreenCard> createState() => _HomeScreenCardState();
}

class _HomeScreenCardState extends State<HomeScreenCard> {
  bool isFavoriteClicked = false;
  bool isCommentClicked = false;
  bool isSendClicked = false;
  bool isBookmarkClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
        defaultShadow
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/helmet.png",
                width: 41.12,
                height: 36.12,
              ),
              TextWidget(
                  text: "${widget.username}",
                  size: 14.15,
                  color: GlobalColors.homeBlackColor,
                  fontWeight: FontWeight.w600),
              SizedBox(
                width: 10,
              ),
              TextWidget(
                  text: "Connect",
                  size: 14,
                  color: GlobalColors.primaryColor,
                  fontWeight: FontWeight.w400),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: "${widget.description}",
                      size: 11.4,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(alignment: Alignment.center, children: [
            Image.asset(
              "${widget.image}",
              height: 368,
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 8, top: 7),
                decoration: BoxDecoration(
                    color: Color(0xff000000).withOpacity(0.5),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(25))),
                height: 41,
                width: 113,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: "Exp Rate",
                        size: 9,
                        color: GlobalColors.whiteColor,
                        fontWeight: FontWeight.w400),
                    Row(
                      children: List.generate(5, (index){
                        return Icon(
                          Icons.grade,
                          color: Colors.yellow,
                          size: 14,
                        );
                      })
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child:
              Row(children: [
                Icon(
                  Icons.circle,
                  color: GlobalColors.primaryColor,
                  size: 12,
                ),
                SizedBox(
                  width: 7,
                ),
                Icon(
                  Icons.circle,
                  color: Color(0xff939393),
                  size: 12,
                ),
                SizedBox(
                  width: 7,
                ),
                Icon(
                  Icons.circle,
                  color: Color(0xff939393),
                  size: 12,
                ),
                SizedBox(
                  width: 7,
                ),
                Icon(
                  Icons.circle,
                  color: Color(0xff939393),
                  size: 12,
                ),
              ]),
            ),
          ]),
          SizedBox(
            height: 9,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 10),
            child:
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      text: "${widget.hearts} Hearts",
                      size: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavoriteClicked = !isFavoriteClicked;
                      });
                    },
                    child: Icon(
                      Icons.favorite_outline,
                      color: isFavoriteClicked ? Colors.red : GlobalColors.iconColor,
                    ),
                  ),
                  InkWell(onTap: (){
                    Get.to(CommentsScreen());
                    setState(() {
                      isCommentClicked=!isCommentClicked;
                    });
                  },
                      child:Image.asset('assets/icons/comment.png', height: 20.sp, width: 20.sp, fit: BoxFit.contain,color: isCommentClicked==true?Colors.red:GlobalColors.iconColor),),


                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSendClicked = !isSendClicked;
                      });
                    },
                    child: Icon(
                      Icons.send,
                      color:  isSendClicked ? Colors.red : GlobalColors.iconColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                        setState(() {
                          isBookmarkClicked = !isBookmarkClicked;
                        });
                    },
                    child: Icon(
                      Icons.bookmark_outline_outlined,
                      color: isBookmarkClicked ? Colors.red : GlobalColors.iconColor,
                    ),
                  ),


                ]),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.only(left: 15,bottom: 10
            ),
            child: TextWidget(
                text: "${widget.comments} Comments",
                size: 12.41,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
