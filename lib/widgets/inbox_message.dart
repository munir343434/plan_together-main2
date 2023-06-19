import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/widgets/text_widget.dart';

class InboxMessage extends StatefulWidget {
  const InboxMessage({Key? key}) : super(key: key);

  @override
  State<InboxMessage> createState() => _InboxMessageState();
}

class _InboxMessageState extends State<InboxMessage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
          leading: Container(
            height: 81,
            width: 51,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/inbox.png"),
                    fit: BoxFit.cover)),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                  text: "John Harry",
                  size: 16,
                  color: homeBlackColor,
                  fontWeight: FontWeight.w700),
              TextWidget(
                  text: "11.32 PM",
                  size: 12,
                  color: greyColor,
                  fontWeight: FontWeight.w400),

            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                  text: "Good morning, anything we ca...",
                  size: 14,
                  color: Color(0xff50555C),
                  fontWeight: FontWeight.w400),
              Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: primaryColor),
                child: Center(
                    child: TextWidget(
                        text: "2",
                        size: 12,
                        color: whiteColor,
                        fontWeight: FontWeight.w700)),
              )
            ],
          )),
    );
  }
}
