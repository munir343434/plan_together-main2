import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../utils/global_colors.dart';

class ChatBot extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  const ChatBot({Key? key,required this.image,required this.text,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return
    Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 26,
            width: 25,
            color: color,
            child: Center(
              child: Image.asset(image.toString(),width: 20,height: 20,),
            ),
          ),
          const SizedBox(
            width: 21,
          ),
          Expanded(
            child: TextWidget(
                text: text,
                size: 14,
                lineHeight: 1.8,
                color: Color(0xff343541),
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            width: 30,
          ),
          const Icon(
            Icons.thumb_up_alt_outlined,
            color: Color(0xffACACBE),
            size: 17,
          ),
          const   SizedBox(
            width: 13.2,
          ),
          const  Icon(
            Icons.thumb_down_alt_outlined,
            color: Color(0xffACACBE),
            size: 17,
          )
        ],
      ),
    );
  }
}

