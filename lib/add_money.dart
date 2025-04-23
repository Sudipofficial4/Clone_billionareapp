import 'package:flutter/material.dart';

// ignore: must_be_immutable
class addMoneyButton extends StatelessWidget {
  void Function() addmoneyfunction;
  addMoneyButton({super.key, required this.addmoneyfunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[700],
                minimumSize: Size(double.infinity, 0)),
            onPressed: addmoneyfunction,
            child: Text("Click Here")));
  }
}
