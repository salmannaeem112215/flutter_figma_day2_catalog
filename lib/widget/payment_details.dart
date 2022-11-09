import 'package:flutter/material.dart';

class PaymentDetails extends StatelessWidget {
  PaymentDetails({Key? key, required this.paymentMethod}) : super(key: key);
  String paymentMethod = '';
  @override
  Widget build(BuildContext context) {
    print(paymentMethod.isEmpty);
    print(paymentMethod == '');
    print('hi');
    // (paymentMethod!.length == 0) ? print('is Empty') : print('Not EMptyy');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Details',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        paymentMethod.isEmpty
            ? Center(
                child: Column(
                  children: [
                    Text('Please Select Payment Method'),
                    LinearProgressIndicator(),
                  ],
                ),
              )
            : Text('hi'),
      ],
    );
  }
}
