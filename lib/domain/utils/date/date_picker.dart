import 'package:flutter/material.dart';

//========== Date Picker ==========
Future<DateTime?> datePicker(BuildContext context) {
  return showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime.now().subtract(
      const Duration(days: 30),
    ),
    lastDate: DateTime.now(),
  );
}
