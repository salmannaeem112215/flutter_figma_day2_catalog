import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentDetails extends StatelessWidget {
  PaymentDetails({Key? key, required this.paymentMethod}) : super(key: key);
  String paymentMethod = '';
  @override
  Widget build(BuildContext context) {
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
                    SizedBox(
                      height: 30,
                    ),
                    Text('Please Select Payment Method !'),
                    SizedBox(
                      height: 30,
                    ),
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            : Form(
                child: Column(
                children: [
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: "Enter Name On Card"),
                    keyboardType: TextInputType.name,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Card  Number"),
                    keyboardType: TextInputType.number,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: TextFormField(
                            decoration:
                                InputDecoration(labelText: "Expiration"),
                            keyboardType: TextInputType.datetime,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        fit: FlexFit.tight,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: TextFormField(
                            decoration: InputDecoration(labelText: "CVV"),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ))
      ],
    );
  }
}
