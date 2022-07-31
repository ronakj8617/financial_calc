
import 'package:financial_calc/constants/dateTimePicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePickerr extends StatefulWidget {
  const DatePickerr({Key? key}) : super(key: key);

  static bool showDatePicker= false;

  @override
  State<DatePickerr> createState() => _DatePickerrState();
}

class _DatePickerrState extends State<DatePickerr> {
  @override
  Widget build(BuildContext context) {
  
  String reference;
    return Container(
    child:
      DatePickerr.showDatePicker?SfDateRangePicker():Container()
    );
  }
}