// alert_dialog.dart
import 'package:flutter/material.dart';

import '../utils/global_colors.dart';
import '../utils/images.dart';
import 'get_textfield.dart';
import 'mainButton.dart';

class CustomAlertDialog extends StatelessWidget {
  final String newItem;
  final Function(String) addItem;

  CustomAlertDialog({
    required this.newItem,
    required this.addItem,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController textFieldController = TextEditingController();

    return AlertDialog(
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Add New Item",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff1B1F31),
                  fontWeight: FontWeight.w700,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child:
                Image.asset(cancel),
              ),
            ],
          ),
          const Divider(
            thickness: 0.6,
          ),
        ],
      ),
      content: Container(
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Item Name",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff2F2F2F),
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            getTextField(
                height: 39,
                borderRadius: 0,

                controller: textFieldController,
                contentPadding: 20)
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: MainButton(
              height: 50,
              color: primaryColor,
              text: "Add",
              textColor: Colors.white,
              textSize: 15,
              onPressed: () {
                String newItem = textFieldController.text;
                addItem(newItem);
                Navigator.of(context).pop();
                print(newItem);
              },
              textFont: FontWeight.w700),
        ),
      ],
    );
  }
}
