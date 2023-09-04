import 'package:flutter/material.dart';

class DatePickerPage extends StatelessWidget {
  const DatePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              DateTime now = DateTime.now();
              showDatePicker(
                context: context,
                initialDate: now,
                firstDate: DateTime(2020),
                lastDate: DateTime(now.year + 1),
              ).then((value) {
                print('datePicked: ${value?.toIso8601String()}');
              });
            },
            child: const Text('Pick'),
          ),
        ],
      ),
    );
  }
}
