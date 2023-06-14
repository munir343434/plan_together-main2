import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/widgets/mainButton.dart';
import 'package:plan_together/widgets/text_widget.dart';

class FollowWidget extends StatefulWidget {
  String? image, name, userName;

  FollowWidget(
      {Key? key,
      required this.name,
      required this.image,

      required this.userName})
      : super(key: key);

  @override
  State<FollowWidget> createState() => _FollowWidgetState();
}

class _FollowWidgetState extends State<FollowWidget> {
  bool isFollowing = false;
  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Container(
            height: 36.5,
            width: 36.5,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(widget.image ?? ""), fit: BoxFit.cover)),
          ),
          SizedBox(width: 9,),Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  text: widget.name??"",
                  size: 16,
                  color: GlobalColors.followerNameColor,
                  fontWeight: FontWeight.w700),
              TextWidget(
                  text: widget.userName??"",
                  size: 16,
                  color: GlobalColors.followerUserNameColor,
                  fontWeight: FontWeight.w400)
            ],
          ),
        ],),

        MainButton(
            height: 32,
            width:96 ,
            color:isFollowing ?  Colors.white:GlobalColors.primaryColor,
            text: isFollowing ? 'Unfollow' : 'Follow',
            border: Border.all(color: GlobalColors.primaryColor),
            textColor:isFollowing ?  GlobalColors.primaryColor:Colors.white,
            textSize: 12,
            onPressed: toggleFollow,
            textFont: FontWeight.w700)
      ],
    );
  }
}
