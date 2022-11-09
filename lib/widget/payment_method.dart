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
                    value: "card",
                    groupValue: paymentMethod,
                    onChanged: (value) {
                      setPaymentMethod(value);
                    },
                  ),
                  Image.asset(
                    'assets/images/credit-cards.png',
                    height: 38,
                    // width: ,
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  Radio(
                    value: "paypal",
                    groupValue: paymentMethod,
                    onChanged: (value) {
                      setPaymentMethod(value);
                    },
                  ),
                  Image.asset(
                    'assets/images/paypal01.png',
                    height: 38,
                    width: 95,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
