import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactions;

  TransactionList(this._userTransactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: _userTransactions.isEmpty
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
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: FittedBox(
                            child:
                                Text("\$${_userTransactions[index].amount}")),
                      ),
                    ),
                    title: Text(
                      _userTransactions[index].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(DateFormat.yMMMd()
                        .format(_userTransactions[index].date)),
                  ),
                );
              },
              itemCount: _userTransactions.length,
            ),
    );
  }
}
