import 'package:flutter/material.dart';

class TimePickerPage extends StatelessWidget {
  const TimePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Picker'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              DateTime now = DateTime.now();
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.fromDateTime(now),
              ).then((value) {
                print('timePicked: ${value?.toString()}');
              });
            },
            child: const Text('Pick'),
          ),
        ],
      ),
    );
  }
}
