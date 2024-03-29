import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';
import '../widgets/transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactions;
  final Function _deleteTransaction;

  TransactionList(this._userTransactions, this._deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return _userTransactions.isEmpty
        ? Column(
            children: <Widget>[
              Text(
                "No transactions added yet",
                style: Theme.of(context).textTheme.title,
              ),
              Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    "assets/images/waiting.png",
                    fit: BoxFit.cover,
                  )),
            ],
          )
        : ListView.builder(
            itemBuilder: (context, index) {
              return TransactionItem(userTransactions: _userTransactions[index], deleteTransaction: _deleteTransaction);
            },
            itemCount: _userTransactions.length,
          );
  }
}


