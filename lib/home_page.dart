import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.teal,
            child: Container(
              height: 150,
              child: Center(
                child: Text('CHART'),
              ),
            ),
          ),
          UserTransactions(),
        ],
      ),
    );
  }
}
