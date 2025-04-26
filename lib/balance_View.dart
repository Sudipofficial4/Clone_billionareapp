import 'package:flutter/material.dart';

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
          Text("$balance"),
        ],
      ),
    );
  }
}
