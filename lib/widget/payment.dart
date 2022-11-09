import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Pagination
        SizedBox(
          height: 40,
        ),

        // Payment Methods
        Text(
          'Payment Methods',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(),

        //Payment Details

        Row(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Radio(
                    value: "other",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text("Other"),
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  Radio(
                    // title: Text("Others"),
                    value: "othser",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text("Other"),
                ],
              ),
            ),
          ],
        ),
        Text(
          'Payment Details',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
