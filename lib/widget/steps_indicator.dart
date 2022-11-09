import 'package:flutter/material.dart';
import 'package:steps_indicator/steps_indicator.dart';

class StepIndicator extends StatelessWidget {
  const StepIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: Column(
        children: [
          StepsIndicator(
            selectedStep: 1,
            nbSteps: 3,
            doneStepColor: Colors.black,
            doneLineColor: Colors.black,
            undoneLineColor: Colors.grey.shade300,
            isHorizontal: true,
            lineLength: 100,
            doneStepWidget: Icon(
              Icons.circle_outlined,
              color: Colors.grey.shade700,
              size: 20,
            ), // Custom Widget
            unselectedStepWidget: Icon(
              Icons.circle_outlined,
              color: Colors.grey.shade300,
              size: 20,
            ), // Custom Widget
            selectedStepWidget: Icon(
              Icons.circle_rounded,
              color: Theme.of(context).primaryColor,
              size: 30,
            ), // Custom Widget
          ),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Shipping'),
                  )),
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text('Billing'),
                  )),
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text('Confirmation'),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
