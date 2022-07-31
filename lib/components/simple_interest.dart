import 'package:finance/finance.dart';
import 'package:financial_calc/components/date.dart';
import 'package:financial_calc/components/datePicker.dart';
import 'package:financial_calc/constants/dateTimePicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() {
  runApp(SimpleInterest());
}

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({Key? key}) : super(key: key);

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  TextEditingController principalAmount = TextEditingController();
  TextEditingController interestAmount = TextEditingController();
  late String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("jhgh"),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 17),
          Row(children: [
            Text(
              "Principle amount ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "Times new roman"),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 100,
              child: TextField(
                controller: principalAmount,
                keyboardType: TextInputType.number,
              ),
            )
          ]),
          SizedBox(height: 17),
          Row(
            children: [
              Text(
                "Annual Interest ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "Times new roman"),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 100,
                child: TextField(
                  controller: interestAmount,
                  keyboardType: TextInputType.number,
                ),
              )
            ],
          ),
          SizedBox(
            height: 17,
          ),
          DatePickerr(),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      if (!DatePickerr.showDatePicker)
                        DatePickerr.showDatePicker = true;
                      else
                        DatePickerr.showDatePicker = false;
                    });
                  },
                  child: Text('Investment made Date')),
              TextButton(
                  onPressed: () {
                    setState(() {
                      if (!DatePickerr.showDatePicker)
                        DatePickerr.showDatePicker = true;
                      else
                        DatePickerr.showDatePicker = false;
                    });
                  },
                  child: Text('Maturity Date'))
            ],
          ),
          SizedBox(
            height: 17,
          ),
          TextButton(onPressed: calculateInterest, child: Text('Calculate')),
          SizedBox(
            height: 17,
          ),
          Text(
            "Monthly interest: " + result,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Times new roman"),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            "Annual interest: " + (double.parse(result) * 12).toString(),
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Times new roman"),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }

  @override
  showDatePicker(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {},
          child: const Text('Open Date Picker'),
        ),
      ),
    );
  }

  String calculateInterest() {
    // result = Finance.pmt(
    //         rate: int.parse(interestAmount.text),
    //         nper: 12,
    //         pv: int.parse(principalAmount.text))
    //     .toString();

    result = ((double.parse(principalAmount.text.toString()) *
                double.parse(interestAmount.text.toString())) /
            100)
        .toString();
    print(result);
    return result;
  }
}
