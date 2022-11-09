import 'package:flutter/material.dart';
import '../widget/payment.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Container(
                  width: double.infinity,
                  child: Text('hi'),
                )),
            Flexible(
              flex: 9,
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Payment(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
