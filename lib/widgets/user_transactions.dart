import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 1,
      title: 'Nintendo Switch',
      amount: -69999.00,
      date: '15/05/2021',
      installments: 9,
    ),
    Transaction(
      id: 2,
      title: 'Pokemon Sword',
      amount: -9300,
      date: '15/05/2021',
      installments: 12,
    ),
    Transaction(
      id: 3,
      title: 'Sueldo',
      amount: 105000,
      date: '28/06/2021',
      installments: 0,
    ),
  ];

  void _addNewTransaction(
      String txTitle, double txAmount, String txDate, int txInstallments) {
    final newTx = Transaction(
        // TODO: implement id handling.
        id: 1,
        title: txTitle,
        amount: txAmount,
        date: txDate,
        installments: txInstallments);

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
