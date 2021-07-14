import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
      ),
    );
  }
}
