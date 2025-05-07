import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class BalanceView extends StatelessWidget {
  double balance;

  BalanceView({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Balance part"),
          Text(
              '\$ ${NumberFormat.simpleCurrency(name: '').format(balance)}', //empty string is provided to remove the dollar sign
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
