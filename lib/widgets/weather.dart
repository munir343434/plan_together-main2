import 'package:flutter/material.dart';
import 'package:plan_together/cards/weather_main.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../cards/hourly_weather.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({Key? key}) : super(key: key);

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}
class _WeatherWidgetState extends State<WeatherWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20,left: 25,right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WeatherMain(time:"3.30PM" ,date: "Monday, December 20, 2021",image:cloud1 ,temp: "18º C",description:"Cloudy Rain" ,lastUpdated:"Last updated 3.00 PM" ,onPressed:(){} ,),
         SizedBox(height: 24,),
          TextWidget(text: "Hourly Weather", size: 20, color: blackColor, fontWeight: FontWeight.w500),
          SizedBox(height: 16,),
          Row(children: [
            HourlyWeather(time: "4.00PM",image:cloud2 ,temp: "20º",onPressed: (){},),
            HourlyWeather(time: "5.00PM",image:cloud2 ,temp: "20º",onPressed: (){},),
            HourlyWeather(time: "6.00PM",image:cloud3 ,temp: "19º",onPressed: (){},),
            HourlyWeather(time: "7.00PM",image:cloud4 ,temp: "19º",onPressed: (){},),
          ],)
        ],
      ),
    );
  }
}
