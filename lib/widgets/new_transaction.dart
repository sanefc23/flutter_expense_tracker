import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './trans_date_picker.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final installmentsController = TextEditingController(text: "1");

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: amountController,
                decoration: InputDecoration(
                  labelText: "Amount",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TransDatePicker(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: installmentsController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Installments",
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextButton(
                      onPressed: () => addTx(
                          titleController.text,
                          double.parse(amountController.text),
                          // TODO: implement datepicker.
                          '13/07/2021',
                          int.parse(installmentsController.text)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Add transaction',
                          textScaleFactor: 1.2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
