import 'package:get/get.dart';
import 'package:plan_together/constant/constant.dart';
import 'package:plan_together/utils/global_colors.dart';
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
    this.onProfilePressed
  }) : super(key: key);

  String? hearts, comments, rating, image, description, username;
  VoidCallback? onPressed;
  VoidCallback? onProfilePressed;

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
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: widget.onProfilePressed,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/helmet.png",
                  width: 41.12,
                  height: 36.12,
                ),
                TextWidget(
                    text: "${widget.username}",
                    size: 14.15,
                    color: homeBlackColor,
                    fontWeight: FontWeight.w600),
                const SizedBox(
                  width: 10,
                ),
                TextWidget(
                    text: "Connect",
                    size: 14,
                    color: primaryColor,
                    fontWeight: FontWeight.w400),
              ],
            ),
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
          const SizedBox(
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
                padding: const EdgeInsets.only(left: 8, top: 7),
                decoration: BoxDecoration(
                    color: const Color(0xff000000).withOpacity(0.5),
                    borderRadius:
                        const BorderRadius.only(topRight: Radius.circular(25))),
                height: 41,
                width: 113,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: "Exp Rate",
                        size: 9,
                        color: whiteColor,
                        fontWeight: FontWeight.w400),
                    Row(
                      children: List.generate(5, (index){
                        return const Icon(
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
              Row(children: const [
                Icon(
                  Icons.circle,
                  color: primaryColor,
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
          const SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child:
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      text: "${widget.hearts} Hearts",
                      size: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  const SizedBox(
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
                      color: isFavoriteClicked ? Colors.red : iconColor,
                    ),
                  ),
                  InkWell(onTap: (){
                    Get.to(const CommentsScreen());
                    setState(() {
                      isCommentClicked=!isCommentClicked;
                    });
                  },
                      child:Image.asset('assets/icons/comment.png', height: 20.sp, width: 20.sp, fit: BoxFit.contain,color: isCommentClicked==true?Colors.red:iconColor),),


                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSendClicked = !isSendClicked;
                      });
                    },
                    child: Icon(
                      Icons.send,
                      color:  isSendClicked ? Colors.red : iconColor,
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
                      color: isBookmarkClicked ? Colors.red : iconColor,
                    ),
                  ),


                ]),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 15,bottom: 10
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
