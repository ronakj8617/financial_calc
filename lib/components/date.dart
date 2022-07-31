import 'package:financial_calc/components/simple_interest.dart';
import 'package:financial_calc/constants/dateTimePicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePickerr extends StatefulWidget {
  const DatePickerr({Key? key}) : super(key: key);

  static bool showDatePicker = false;
  static String selectedDate = '';

  @override
  State<DatePickerr> createState() => _DatePickerrState();
}

class _DatePickerrState extends State<DatePickerr> {
  @override
  Widget build(BuildContext context) {
    String reference;
    return Container(
        child: DatePickerr.showDatePicker
            ? SfDateRangePicker(
                onSelectionChanged: (DateRangePickerSelectionChangedArgs
                    dateRangePickerSelectionChangedArgs) {
                  onSelectionChanged(dateRangePickerSelectionChangedArgs);

                  setState(() {
                    DatePickerr.showDatePicker = false;
                    DatePickerr.selectedDate =
                        dateRangePickerSelectionChangedArgs.value.toString();
                    SimpleInterest.investmentMadeDateLabel =
                        dateRangePickerSelectionChangedArgs.value.toString();
                    print(SimpleInterest.investmentMadeDateLabel);
                  });
                },
              )
            : Container());
  }

  static void onSelectionChanged(
      DateRangePickerSelectionChangedArgs dateRangePickerSelectionChangedArgs) {
    DatePickerr.selectedDate =
        dateRangePickerSelectionChangedArgs.value.toString();
    DatePickerr.showDatePicker = false;
    SimpleInterest.investmentMadeDateLabel =
        dateRangePickerSelectionChangedArgs.value.toString();
  }
}
