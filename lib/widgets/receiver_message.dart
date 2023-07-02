
import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/widgets/text_widget.dart';

class ReceiverMessage extends StatelessWidget {
  final String? text;
  final String? time;
  final IconData? icon;
  final String? image;
  const ReceiverMessage({Key? key,this.text,this.icon,this.time,this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:[
            image==null?  Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Color(0xffE8E8E8),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10))),
              child: TextWidget(
                  text:text??"",
                  size: 14.82,
                  color: homeBlackColor,
                  fontWeight: FontWeight.w400),
            ):
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Color(0xffE8E8E8),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10))),
                child: Image.asset(image??"",height: 123,width: 123,),
              ),
        time!=null?
              SizedBox(height: 10,):SizedBox.shrink(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          SizedBox(height: 10,)  ,
          TextWidget(text: time??"", size: 12.7, color: Color(0xffADB3BC), fontWeight: FontWeight.w400),
          SizedBox(width: 5,),
          Icon(icon,size: 15,color: primaryColor,)
        ],)
         ] );
  }
}
