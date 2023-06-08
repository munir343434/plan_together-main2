
import 'package:flutter/material.dart';
import 'package:plan_together/cards/currency.dart';

class CurrencyWidget extends StatelessWidget {
  const CurrencyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: double.maxFinite,
      child: Column(children: [
        Currency(text: "Local Currency",currency: "Dollar (\$)",),
        SizedBox(height:18 ,),
        Currency(text: "Destination Currency",currency: "Pound (£)",),


      ],),
    );
  }
}
