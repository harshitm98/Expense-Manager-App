import 'package:expense_app/widgets/user_transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './models/transaction.dart';
import './widgets/transaction_list.dart';
import 'package:expense_app/widgets/new_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense manager',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

 
final titleController = TextEditingController();
final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Manager'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text("Chart"),
            ),
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}
