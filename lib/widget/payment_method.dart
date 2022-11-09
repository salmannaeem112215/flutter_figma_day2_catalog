import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod(
      {Key? key, required this.paymentMethod, required this.setPaymentMethod})
      : super(key: key);
  String paymentMethod;
  Function setPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Payment Methods
        Text(
          'Payment Methods',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Radio(
                    value: "other",
                    groupValue: paymentMethod,
                    onChanged: (value) {
                      setPaymentMethod(value);
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
                    value: "othser",
                    groupValue: paymentMethod,
                    onChanged: (value) {
                      setPaymentMethod(value);
                    },
                  ),
                  Text("Other"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
