import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/widgets/receiver_message.dart';
import 'package:plan_together/widgets/text_field.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../widgets/send_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.5,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            color: blackColor,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: Row(children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/profile2.png"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  text: "Ashley",
                  size: 16.19,
                  color: homeBlackColor,
                  fontWeight: FontWeight.w500),
              TextWidget(
                  text: "Online",
                  size: 12.7,
                  color: Color(0XFF130F26),
                  fontWeight: FontWeight.w400),
            ],
          ),
        ]),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone_enabled_sharp,
                color: blackColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: blackColor,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14,top: 25,right: 16),
              child: Column(children: [
                ReceiverMessage(
                  text: "Hello, good morning :)",
                  time: "11:20 PM",
                  icon: Icons.done_all_outlined,
                ),
                SizedBox(
                  height: 16,
                ),
                SenderMessage(
                  text:
                  "Good morning, I saw your profile and i like your Personality.",
                ),
                SizedBox(
                  height: 16,
                ),
                ReceiverMessage(text: "Thanks 😍"),
                ReceiverMessage(image: "assets/images/message.png"),
                ReceiverMessage(
                  text: "We are Going for the trip in \nDubai you wanna join",
                  time: "11:20 PM",
                  icon: Icons.done_all_outlined,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
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
                          child: Image.asset("assets/images/message_type.png"))
                    ]),
              ],),
            ),
            Divider(thickness: 0.5,),
            Padding(
              padding: const EdgeInsets.only(left: 14,right: 16,top: 5,bottom: 10),
              child: Column(children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                      children:[
                        Expanded(
                          child: textField(
                              text: "Type a message",
                              sufixIcon: Icons.emoji_emotions_outlined),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: primaryColor
                          ),child: Center(
                          child: Image.asset("assets/icons/send3.png",width: 30,height: 30,),
                        ),
                        )
                      ]),
                )
              ],),
            ),

          ],
        ),
      ),
    );
  }
}
