import 'package:flutter/material.dart';

class RangePickerPage extends StatelessWidget {
  const RangePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Range Picker'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              DateTime now = DateTime.now();
              showDateRangePicker(
                context: context,
                firstDate: DateTime(2020),
                lastDate: DateTime(now.year + 1),
                initialDateRange: DateTimeRange(
                  start: now.subtract(const Duration(days: 3)),
                  end: now,
                ),
              ).then((value) {
                print('duration: ${value?.duration.inDays} days');
                print('start: ${value?.start.toIso8601String()}');
                print('end: ${value?.end.toIso8601String()}');
              });
            },
            child: const Text('Pick'),
          ),
        ],
      ),
    );
  }
}
