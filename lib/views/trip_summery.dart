import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/widgets/budget_module.dart';
import 'package:plan_together/widgets/checklist.dart';
import 'package:plan_together/widgets/curerncy_widget.dart';
import 'package:plan_together/widgets/mainButton.dart';
import 'package:plan_together/widgets/text_widget.dart';

import '../cards/currency.dart';
import '../cards/trips_with_friends.dart';
import '../widgets/flight_information.dart';
import '../widgets/weather.dart';

class TripSummery extends StatefulWidget {
  const TripSummery({Key? key}) : super(key: key);

  @override
  State<TripSummery> createState() => _TripSummeryState();
}

class _TripSummeryState extends State<TripSummery>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: GlobalColors.whiteColor,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: GlobalColors.blackColor,
            ),
          ),
        ),
        title: TextWidget(
            text: "Trip Summery",
            size: 21.88,
            color: GlobalColors.homeBlackColor,
            fontWeight: FontWeight.w700),
        actions: [
          Icon(
            Icons.more_vert_outlined,
            color: GlobalColors.homeBlackColor,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, right: 24, top: 14),
            child: TripsWithFriends(
              location: 'Sant Paulo, Milan, Italy',
              dateFrom: 'Wed, Apr 28 2023',
              timeFrom: '5:30 PM',
              dateTo: 'Wed, Apr 28 2023',
              timeTo: '5:30 PM',
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TripSummery(),
                  )),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          MainButton(
              width: 127,
              height: 26,
              color: GlobalColors.primaryColor,
              text: "Show on map",
              textColor: Colors.white,
              textSize: 12.42,
              textFont: FontWeight.w600),
          SizedBox(
            height: 14,
          ),
          TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            indicatorWeight: 2,
            controller: _tabController,
            labelColor: Color(0xff1E232C),
            unselectedLabelColor: Color(0xff7B7B7B),
            labelStyle: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
            tabs: [
              Tab(
                text: 'Flight Information',
              ),
              Tab(text: 'Checklist'),
              Tab(text: 'Weather'),
              Tab(text: 'Budget Module'),
              Tab(text: 'Currency'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Content of Tab 1
                SingleChildScrollView(child: FlightInformation()),
                 CheckList(),
                // Content of Tab 2
                SingleChildScrollView(child: WeatherWidget()),
                // Content of Tab 3
                BudgetModule(),
                CurrencyWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
