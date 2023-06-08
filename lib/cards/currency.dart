import 'package:flutter/material.dart';
import 'package:plan_together/constant/constant.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/widgets/text_widget.dart';

class Currency extends StatelessWidget {
  String text;
  String currency;

  Currency({Key? key, required this.text, required this.currency})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(21 ),
          height: 106,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [defaultShadow]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  text: text,
                  size: 18.53,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
              SizedBox(height:12 ,),
              TextWidget(
                  text: currency,
                  size: 18.53,
                  color: GlobalColors.primaryColor,
                  fontWeight: FontWeight.w600),
            ],
          ),
        )
      ],
    );
  }
}
