import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/widgets/add_new_trip_button.dart';
import 'package:plan_together/widgets/get_textfield.dart';
import 'package:plan_together/widgets/mainButton.dart';
import 'package:plan_together/widgets/text_widget.dart';
import 'package:plan_together/widgets/upload_trip_picture.dart';

class TripRatingScreen extends StatefulWidget {
  const TripRatingScreen({Key? key}) : super(key: key);

  @override
  State<TripRatingScreen> createState() => _TripRatingScreenState();
}

class _TripRatingScreenState extends State<TripRatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(),
          child: InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextWidget(
                  text: "Tell us About your trip",
                  size: 29,
                  color: GlobalColors.homeBlackColor,
                  fontWeight: FontWeight.w700),
              SizedBox(
                height: 11,
              ),
              TextWidget(
                  text:
                      "Lorem ipsum dolor sit amet consectetur. Laoreet integer maecenas velit non ultricies risus vel..",
                  size: 14,
                  color: Color(0xff828F9C),
                  fontWeight: FontWeight.w400),
              SizedBox(
                height: 28,
              ),
              TextWidget(
                  text: "Upload Trip pictures",
                  size: 17,
                  color: Color(0xff1B1F31),
                  fontWeight: FontWeight.w700),
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 116,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return UploadTripPicture(
                                image: uploadTripPic,
                              );
                            }),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 116,
                          width: 116,
                          decoration: BoxDecoration(
                            color: Color(0xffF0F0F0),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(uploadMoreImages),
                              TextWidget(
                                  text: "Upload image",
                                  size: 12,
                                  color: Color(0xff9E9E9E),
                                  fontWeight: FontWeight.w600),
                            ],
                          ),
                        ),
                      ),
                      AddNewTripButton(
                        text: "Add More",
                        onPressed: () {},
                        buttonColor: Colors.white,
                        textColor: GlobalColors.primaryColor,
                      )
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              TextWidget(
                  text: "Some information about your Trip",
                  size: 17,
                  color: Color(0xff1B1F31),
                  fontWeight: FontWeight.w700),
              SizedBox(
                height: 7,
              ),
              TextWidget(
                  text: "Tell us the overview of your Whole Trip",
                  size: 14,
                  color: Color(0xff828F9C),
                  fontWeight: FontWeight.w400),
     SizedBox(height: 17,),
              getTextField(maxline: 10,height:202,borderRadius: 36),
              SizedBox(
                height: 30,
              ),
              TextWidget(
                  text: "Rating of Trip",
                  size: 17,
                  color: Color(0xff1B1F31),
                  fontWeight: FontWeight.w700),
              SizedBox(
                height: 12,
              ),
              TextWidget(
                  text: "Rate your Trip from 1-5 Stars",
                  size: 14,
                  color: Color(0xff828F9C),
                  fontWeight: FontWeight.w400),
              SizedBox(
                height: 15,
              ),
              Row(children: List.generate(5, (index) => Icon(Icons.star,color: Color(0xffFFCD00),size: 30,)
              )

              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: MainButton(
            color: GlobalColors.primaryColor,
            text: "Post Experience",
            textColor: Colors.white,
            textSize: 16,
            textFont: FontWeight.w700),
      ),
    );
  }
}
