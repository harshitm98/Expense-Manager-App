import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function _addNewTransaction;

  NewTransaction(this._addNewTransaction);

  void submitData(){
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    if(enteredTitle.isEmpty || enteredAmount <= 0){
      return;
    }
    _addNewTransaction(titleController.text, double.parse(amountController.text),);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: "Title"),
                    controller: titleController,
                    keyboardType: TextInputType.text,
                    onSubmitted: (_) => submitData(),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Amount"),
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    onSubmitted: (_) => submitData(),
                  ),
                  FlatButton(
                    child: Text("Add transaction"),
                    onPressed: submitData,
                  ),
                ],
              ),
            ),
          );
  }
}