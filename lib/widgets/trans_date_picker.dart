import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransDatePicker extends StatefulWidget {
  @override
  _TransDatePickerState createState() => _TransDatePickerState();
}

class _TransDatePickerState extends State<TransDatePicker> {
  DateTime _dateTime = DateTime.now();

  late final dateController;

  @override
  void initState() {
    super.initState();
    dateController = TextEditingController(
        text: DateFormat('dd/MM/yy').format(_dateTime).toString());
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateController,
      keyboardType: TextInputType.datetime,
      onTap: () => showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2001),
        lastDate: DateTime(2222),
      ).then((date) {
        setState(() {
          dateController.text = DateFormat('dd/MM/yy').format(date!).toString();
        });
      }),
      decoration: InputDecoration(
        labelText: 'Date',
      ),
    );
  }
}
