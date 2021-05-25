import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: '1',
      title: 'Nintendo Switch',
      amount: -69999.00,
      date: DateTime.now(),
      installments: 9,
    ),
    Transaction(
      id: '2',
      title: 'Pokemon Sword',
      amount: -9300,
      date: DateTime.now(),
      installments: 12,
    ),
    Transaction(
      id: '3',
      title: 'Sueldo',
      amount: 105000,
      date: DateTime.now(),
      installments: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.teal,
            child: Container(
              child: Text('CHART'),
            ),
          ),
          Column(
            children: transactions
                .map((tx) => Container(
                      height: 76,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    tx.title,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    DateFormat('dd/MM/yy').format(tx.date),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                              tx.installments != 0
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(6.0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              color: Colors.grey[200]),
                                          child: Text(
                                            '\$ ' +
                                                (tx.amount / tx.installments)
                                                    .toStringAsFixed(2),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Text(
                                          'Cuota ${tx.installments} de ${tx.installments}',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[600],
                                          ),
                                        )
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(6.0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              color: Colors.lightGreen[100]),
                                          child: Text(
                                            '\$ ' +
                                                tx.amount.toStringAsFixed(2),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.green,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
