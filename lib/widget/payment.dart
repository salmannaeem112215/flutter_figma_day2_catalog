import 'package:flutter/material.dart';
import 'package:flutter_figma_day2/widget/payment_details.dart';
import './payment_method.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String _paymentMethod = '';
  double price = 1800;

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

        PaymentDetails(paymentMethod: _paymentMethod),

        SizedBox(
          height: 40,
        ),

        Text(
            'By clicking on “Confirm Payment” I agree to companies term of services.'),

        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Confirm Payment: RS " + price.toStringAsFixed(0),
            ),
          ),
        ),

        Center(
          child: TextButton(
            onPressed: () {},
            child: Text('Back'),
          ),
        )
      ],
    );
  }
}
