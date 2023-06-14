import 'package:flutter/material.dart';
import 'package:plan_together/widgets/follow_unfollow.dart';

import '../utils/images.dart';
import '../widgets/custom_app_bar.dart';

class FollowersScreen extends StatefulWidget {
  const FollowersScreen({Key? key}) : super(key: key);

  @override
  State<FollowersScreen> createState() => _FollowersScreenState();
}

class _FollowersScreenState extends State<FollowersScreen> {
  List<bool> followStates = [
    false, // Initial follow state for AzizDjan
    true,  // Initial follow state for JohnDoe
    false, // Initial follow state for JaneSmith
    // Add more initial follow states here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Followers",
        elevation: 1,
        onBackButtonPressed: () {
          Navigator.pop(context);
        },
        onMoreButtonPressed: () {
          // Handle more button press
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return
                    Padding(
                      padding: EdgeInsets.only(left: 20,right: 20,top: 30),
                      child: FollowWidget(
                        name: "AzizDjan", image: p1, userName: "A_AzizDjan",),
                    );
                }),
          )
        ],
      ),
    );
  }
}
