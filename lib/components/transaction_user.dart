import 'dart:math';

import 'transaction_form.dart';
import 'transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 254.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 79.34,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't16',
      title: 'Novo Tênis de Corrida',
      value: 254.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't27',
      title: 'Conta de Luz',
      value: 79.34,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't11',
      title: 'Novo Tênis de Corrida',
      value: 254.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't24',
      title: 'Conta de Luz',
      value: 79.34,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't21',
      title: 'Novo Tênis de Corrida',
      value: 254.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't23',
      title: 'Conta de Luz',
      value: 79.34,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
