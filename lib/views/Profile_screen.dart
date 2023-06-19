import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plan_together/cards/trips_with_friends.dart';
import 'package:plan_together/utils/images.dart';
import 'package:plan_together/views/followers_screen.dart';
import 'package:plan_together/views/simple_trip_screen.dart';
import 'package:plan_together/views/trip_summery.dart';
import 'package:plan_together/widgets/custom_app_bar.dart';
import 'package:plan_together/widgets/profile.dart';

import '../cards/home_screen_card.dart';
import '../utils/global_colors.dart';
import '../widgets/mainButton.dart';
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
      appBar: CustomAppBar(
        title: 'Cameronstewart',
        onBackButtonPressed: () {
          Navigator.pop(context);
        },
        onMoreButtonPressed: () {},
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileWidget(),
                SizedBox(height: 45),
              ],
            ),
          ),
          SliverPersistentHeader(
            delegate: _SliverAppBarDelegate(
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "Cameron stewart",
                          size: 21.88,
                          color: GlobalColors.homeBlackColor,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            TextWidget(
                              text: "France",
                              size: 12,
                              color: GlobalColors.homeBlackColor,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(width: 5),
                            Image.asset(flag),
                            SizedBox(height: 19),
                          ],
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1 / 0.4,
                      ),
                      children: List.generate(
                        3,
                            (index) => _gridTile('1200', 'Followers'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14, right: 14),
                    child: Row(
                      children: [
                        Expanded(
                          child: MainButton(
                            height: 45,
                            color: GlobalColors.primaryColor,
                            text: "Follow",
                            textColor: Colors.white,
                            textSize: 16,
                            textFont: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: MainButton(
                            height: 45,
                            color: GlobalColors.plusButton,
                            text: "Message",
                            textColor: Colors.white,
                            textSize: 16,
                            textFont: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
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
                      Tab(text: 'Posts'),
                      Tab(text: 'Trips'),
                    ],
                  ),
                ],
              ),
            ),
            pinned: true,
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ListView.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return HomeScreenCard(
                            comments: '1600',
                            hearts: '416',
                            image: home,
                            description:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
                            username: '@CameronStewart',
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return TripsWithFriends(
                            location: 'Sant Paulo, Milan, Italy',
                            dateFrom: 'Wed, Apr 28 2023',
                            timeFrom: '5:30 PM',
                            dateTo: 'Wed, Apr 28 2023',
                            timeTo: '5:30 PM',
                            buttonColor: GlobalColors.primaryColor,
                            buttonText: "Simple",
                            share: info,
                            imageHeight: 25,
                            imageWidth: 25,
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SimpleTrip(),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget _content;

  _SliverAppBarDelegate(this._content);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _content,
    );
  }

  @override
  double get maxExtent => 250.0;

  @override
  double get minExtent => 250.0;

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

Widget _gridTile(String number, String type) {
  return GestureDetector(
    onTap: (){
      Get.to(FollowersScreen());
    },
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black54,
          width: 0.3,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xff222B45),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            type,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff6B779A),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}
