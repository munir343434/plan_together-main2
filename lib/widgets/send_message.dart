import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/widgets/text_widget.dart';

class SenderMessage extends StatelessWidget {
 final String text;
  const SenderMessage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 61,
            width: 39,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/inbox.png"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[ Container(
                padding: EdgeInsets.all(12),
                width: text.characters.length>15?200:130,
                decoration: BoxDecoration(
                    color: GlobalColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10))),
                child: TextWidget(
                    text:text,
                    size: 14.82,
                    color: GlobalColors.whiteColor,
                    fontWeight: FontWeight.w400),
              ),
    SizedBox(height: 10,),
    SizedBox(height: 10,)  ,
    TextWidget(text: "11:20 PM", size: 12.7, color: Color(0xffADB3BC), fontWeight: FontWeight.w400),
        ]),
          ),
    ]);
  }
}
