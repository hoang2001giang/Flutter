import 'package:flutter/material.dart';
import './transaction.list.dart';
import './new.transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1', 
      title: 'New shoes', 
      amount: 100.00, 
      date: DateTime.now()
    ),
    Transaction(
      id: 't2', 
      title: 'New toys', 
      amount: 80.00, 
      date: DateTime.now()
    ),
    Transaction(
      id: 't3', 
      title: 'New clothes', 
      amount: 85.00, 
      date: DateTime.now()
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTst = Transaction(
      title: title, 
      amount: amount, 
      date: DateTime.now(), 
      id: DateTime.now().toString()
    );

    setState(() {
      _userTransactions.add(newTst);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ]
    );
  }
}