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
        Text(
          'Payment Details',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            // RadioListTile(
            //   title: Text("Male"),
            //   value: "male",
            //   groupValue: gender,
            //   onChanged: (value) {
            //     setState(() {
            //       gender = value.toString();
            //     });
            //   },
            // ),
            // RadioListTile(
            //   title: Text("Female"),
            //   value: "female",
            //   groupValue: gender,
            //   onChanged: (value) {
            //     setState(() {
            //       gender = value.toString();
            //     });
            //   },
            // ),
          ],
        ),

        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                        Expanded(
                            child: Text(
                          'Radio button 1',
                          maxLines: 2,
                        ))
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                        Text('Radio 2')
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                        Text('Test')
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        RadioListTile(
          title: Text("Other"),
          value: "other",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value.toString();
            });
          },
        ),
      ],
    );
  }
}
