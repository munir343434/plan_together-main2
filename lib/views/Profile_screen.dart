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

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
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
                const ProfileWidget(),
                const SizedBox(height: 45),
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
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            TextWidget(
                              text: "Cameron stewart",
                              size: 19.88,
                              color: homeBlackColor,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(width: 10),
                            const GradientText(
                             'Super Traveller',
                              textAlign: TextAlign.left,
                              // shaderRect: Rect.fromLTWH(50.0, 25.0, 50.0, 50.0),
                              // gradient: Gradients.backToFuture,
                              style: TextStyle(
                                  fontSize: 13,),
                            ),
                            Image.asset('assets/images/medal.png',height: 15,width: 15)
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            TextWidget(
                              text: "France",
                              size: 12,
                              color: homeBlackColor,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(width: 5),
                            Image.asset(flag),
                            const SizedBox(height: 19),
                          ],
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1 / 0.4,
                      ),
                      // children: List.generate(
                      //   3,
                      //   (index) => _gridTile('1200', 'Followers'),
                      children: [
                        _gridTile('1200', 'Followers'),
                        _gridTile('124', 'Following'),
                        _gridTile('12', 'Trips'),
                      ],
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    child: Row(
                      children: [
                        Expanded(
                          child: MainButton(
                            height: 45,
                            color: primaryColor,
                            text: "Follow",
                            textColor: Colors.white,
                            textSize: 16,
                            textFont: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: MainButton(
                            height: 45,
                            color: plusButton,
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
                    indicatorColor: primaryColor,
                    indicatorWeight: 2,
                    controller: _tabController,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 50.0),
                    labelColor: primaryColor,
                    unselectedLabelColor: const Color(0xff7B7B7B),
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 30.0),
                    labelStyle: const TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                    tabs: const [
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
                          return TripsOnProfile(
                            location: 'Sant Paulo, Milan, Italy',
                            dateFrom: 'Wed, Apr 28 2023',
                            timeFrom: '5:30 PM',
                            dateTo: 'Wed, Apr 28 2023',
                            timeTo: '5:30 PM',
                            // buttonColor: primaryColor,
                            // buttonText: "Simple",
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
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
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
    onTap: () {
      Get.to(const FollowersScreen());
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
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xff222B45),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            type,
            style: const TextStyle(
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
const hotLinear = LinearGradient(
    colors: [Color(0xff8000FF), Color(0xffFF1F00)], begin: Alignment.centerLeft, end: Alignment.centerRight);

class GradientText extends StatelessWidget {
  const GradientText(
      this.data, {
        this.key,
        required this.style,
        this.gradient =hotLinear,
        this.shaderRect,
        this.textAlign,
        this.textDirection,
        this.locale,
        this.softWrap,
        this.overflow,
        this.textScaleFactor,
        this.maxLines,
        this.semanticsLabel,
      }) : super(key: key);

  @override
  final Key? key;
  final String data;
  final TextStyle style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final Gradient gradient;
  final Rect? shaderRect;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      // Regarding the blend mode: The source is the gradient to draw, and the
      // destination is the text. With srcIn the gradient is drawn with the
      // shape of the text.
      blendMode: BlendMode.srcIn,
      shaderCallback: (rect) => gradient.createShader(shaderRect ?? rect),
      child: Text(
        data,
        style: style,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
      ),
    );
  }
}

