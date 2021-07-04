import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseDatePicker extends StatefulWidget {
  const ExpenseDatePicker({Key? key}) : super(key: key);

  @override
  _ExpenseDatePickerState createState() => _ExpenseDatePickerState();
}

class _ExpenseDatePickerState extends State<ExpenseDatePicker> {
  late TextEditingController _controller;
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController(
        text: DateFormat('dd/MM/yy').format(_dateTime).toString());
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onTap: () => showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2001),
        lastDate: DateTime(2222),
      ).then((date) {
        setState(() {
          _controller.text = DateFormat('dd/MM/yy').format(date!).toString();
        });
      }),
      decoration: InputDecoration(
        labelText: 'Date',
      ),
    );
  }
}
