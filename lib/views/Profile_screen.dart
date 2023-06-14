
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plan_together/cards/trips_with_friends.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/views/trip_summery.dart';
import 'package:plan_together/widgets/custom_app_bar.dart';
import 'package:plan_together/widgets/profile.dart';

import '../cards/home_screen_card.dart';
import '../utils/global_colors.dart';
import '../widgets/text_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Cameronstewart', onBackButtonPressed: () {  }, onMoreButtonPressed: () {  },),
        body: Column(
          children: [
            ProfileWidget(),
            SizedBox(height: 20,),
            TabBar(
              isScrollable: true,
              indicatorColor: GlobalColors.primaryColor,
              indicatorWeight: 2,
              controller: _tabController,
              labelPadding: EdgeInsets.symmetric(horizontal: 50.0),
              labelColor: GlobalColors.primaryColor,
              unselectedLabelColor: Color(0xff7B7B7B),
              indicatorPadding: EdgeInsets.symmetric(horizontal: 30.0),
              labelStyle: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
              tabs: [
                Tab(
                    text: 'Posts'),

                Tab(text: 'Trips'),

              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Content of Tab 1
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 20),
                        child: TextWidget(text: "Showing 190 Posts", size: 15, color: Color(0xff666666), fontWeight: FontWeight.w400),
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return
                                Padding(
                                  padding: EdgeInsets.only(left:18,right: 18,top: 20, ),
                                  child: HomeScreenCard(
                                  comments: '1600',
                                  hearts: '416',
                                  image: home,
                                  description:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
                                  username: '@CameronStewart',
                              ),
                                );
                            }
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18,top: 20),
                        child: TextWidget(text: "Showing 12 Trips", size: 15, color: Color(0xff666666), fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 20,),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          // scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: 16.sp,left: 18,right: 18),
                              child: TripsWithFriends(
                                location: 'Sant Paulo, Milan, Italy',
                                dateFrom: 'Wed, Apr 28 2023',
                                timeFrom: '5:30 PM',
                                dateTo: 'Wed, Apr 28 2023',
                                timeTo: '5:30 PM',
                                share: share,
                                width: 18,
                                height: 20,
                                onPressed: () =>
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const TripSummery(),
                                        )),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  // Content of Tab 2


                ],
              ),
            ),
          ],
        )
    );
  }
}