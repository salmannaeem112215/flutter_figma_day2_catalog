import 'package:flutter/material.dart';
import '../widget/paymen_info.dart';
import '../widget/payment.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  String _name = 'Al-Fajito special Pizza';
  String _size = 'Large';
  double _price = 1800;
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
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: PaymentInfo(
                    name: _name,
                    price: _price,
                    size: _size,
                  ),
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
