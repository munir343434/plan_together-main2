
import 'package:flutter/cupertino.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/widgets/text_widget.dart';

class Comments extends StatelessWidget {
  final String img;
  final String name;
  final String text;
  final String? text2;

  const Comments(
      {Key? key,
      required this.img,
      required this.name,
      required this.text,
      this.text2})
      : super(key: key);

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
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: name,
                      size: 12.41,
                      color: homeBlackColor,
                      fontWeight: FontWeight.w700),
                  SizedBox(
                    height: 9,
                  ),
                  TextWidget(
                      text: text,
                      size: 12.41,
                      color: blackColor,
                      fontWeight: FontWeight.w400),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      TextWidget(
                          text: "Heart· Reply .",
                          size: 12.41,
                          color: primaryColor,
                          fontWeight: FontWeight.w400),
                      TextWidget(
                          text: "20h",
                          size: 12.41,
                          color: subHeading,
                          fontWeight: FontWeight.w400)
                    ],
                  ),
                  SizedBox(height: 9,),
                  TextWidget(text: text2??"", size: 12.41, color: primaryColor, fontWeight: FontWeight.w400),

                ],
              ),
            ),
          )
        ]);
  }
}
