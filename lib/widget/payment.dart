import 'package:flutter/material.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:step_indicator/step_indicator.dart';
import 'package:steps_indicator/steps_indicator.dart';

import './payment_details.dart';
import './payment_method.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String _paymentMethod = '';
  double price = 1800;
  int groupValue = 0;

  int _index = 1;

  void _setPaymentMethod(value) {
    setState(() {
      _paymentMethod = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    int currentStep = 1;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Pagination
        SizedBox(
          height: 200,
          width: 300,
          child: StepIndicatorPageView(
            spacing: 50,
            steps: 3,
            indicatorPosition: IndicatorPosition.top,
            labels: List<String>.generate(3, (index) => "Step ${index + 1}"),
            controller: PageController(),
            complete: () {
              //typically, you'd want to put logic that returns true when all the steps
              //are completed here
              return Future.value(true);
            },
            children: List<Widget>.generate(
              3,
              (index) => Container(
                color: Color(0xffffffff),
                child: Center(
                  child: Text(
                    "Page ${index + 1}",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 200,
          child: LinearStepIndicator(
            steps: 3,
            controller: PageController(),
            labels: List<String>.generate(3, (index) => "Step ${index + 1}"),
            complete: () {
              //typically, you'd want to put logic that returns true when all the steps
              //are completed here
              return Future.value(true);
            },
          ),
        ),

        SizedBox(
          height: 200,
          child: StepIndicator(
            currentStep: 2,
            count: 4,
            activeIndicatorColor: Colors.blue,
            activeLineColor: Colors.blue,
            enableStepTitle: true,
            indicatorBorderWidth: 2,
            stepTitles: ["Step 1", "Step 2", "Step 3", "Step 4"],
            stepTitleStyle: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: StepsIndicator(selectedStep: 1, nbSteps: 4),
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
