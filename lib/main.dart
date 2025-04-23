import 'package:billionareapp/add_money.dart';
import 'package:billionareapp/balance_View.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double balance = 500;
  void addmoney() async {
    setState(() {
      balance = balance + 500;
    });
// Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('balance', balance);
    print(balance);
  }

  @override
  void initState() {
    loadbalance();
    super.initState();
  }

  void loadbalance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    balance = prefs.getDouble('balance') ?? 0;
    setState(() {
      balance = prefs.getDouble('balance') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(183, 105, 75, 187),
            centerTitle: true,
            title: Text("Billionare App"),
          ),
          body: Container(
              padding: EdgeInsets.all(20),
              color: Colors.blueGrey[700],
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BalanceView(balance: balance),
                  addMoneyButton(addmoneyfunction: addmoney),
                ],
              ))),
    );
  }
}
