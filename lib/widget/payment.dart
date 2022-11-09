import 'package:flutter/material.dart';
import 'package:flutter_figma_day2/widget/payment_details.dart';
import './payment_method.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String _paymentMethod = 'card';

  void _setPaymentMethod(value) {
    setState(() {
      _paymentMethod = value.toString();
    });
  }

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

        PaymentMethod(
          paymentMethod: _paymentMethod,
          setPaymentMethod: _setPaymentMethod,
        ),

        PaymentDetails(),
      ],
    );
  }
}
