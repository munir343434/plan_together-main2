import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../utils/global_colors.dart';

class CalendarTextField extends StatefulWidget {
  String text;
   CalendarTextField({Key? key,required this.text}) : super(key: key);
  @override
  _CalendarTextFieldState createState() => _CalendarTextFieldState();
}

class _CalendarTextFieldState extends State<CalendarTextField> {
  TextEditingController _textEditingController = TextEditingController();
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
      SizedBox(
        height: 43,
        child: TextFormField(
          maxLines: 2,
          textAlign: TextAlign.start,
          controller: _textEditingController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 40),
          labelText: widget.text,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize:16,
            color: Color(0xff555555),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0XFFE6E8E7),
            ),
          ), prefixIcon: Icon(Icons.date_range_outlined,size: 20,color:GlobalColors.blackColor,),
          border: new OutlineInputBorder(
              borderSide:BorderSide(color: Color(0XFFE6E8E7)) ,
              borderRadius: BorderRadius.circular(10)
          ),
        ),
          onTap: () {
            _showDatePicker(context);
          },
        ),
      ),
    );
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
        _textEditingController.text =
            DateFormat('MM/dd/yyyy').format(_selectedDate!);
      });
    }
  }
}