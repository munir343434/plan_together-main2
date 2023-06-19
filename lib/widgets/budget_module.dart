import 'package:flutter/material.dart';
import 'package:plan_together/utils/global_colors.dart';
import 'package:plan_together/widgets/mainButton.dart';

class BudgetModule extends StatelessWidget {
  const BudgetModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 34,right: 34),
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MainButton(
              height: 50,
              color: GlobalColors.primaryColor,
              text: "Add Expense",
              textColor: Colors.white,
              textSize: 14.55,
              textFont: FontWeight.w700)
        ],
      ),
    );
  }
}
