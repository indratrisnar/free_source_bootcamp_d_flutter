import 'package:flutter/material.dart';

class I4 extends StatefulWidget {
  const I4({super.key});

  @override
  State<I4> createState() => _I4State();
}

class _I4State extends State<I4> {
  bool agree = false;
  List toopings = [
    {'name': 'cheese', 'value': false},
    {'name': 'sosis', 'value': false},
    {'name': 'sauce', 'value': false},
    {'name': 'puruluk', 'value': false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Box'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Checkbox(
                value: agree,
                onChanged: (value) {
                  agree = value!;
                  setState(() {});
                },
              ),
              const Text('Agreement'),
            ],
          ),
          const SizedBox(height: 16),
          const Text('Add Topping'),
          ...List.generate(toopings.length, (index) {
            Map item = toopings[index];
            return CheckboxListTile(
              value: item['value'],
              title: Text(item['name']),
              onChanged: (value) {
                toopings[index]['value'] = value;
                setState(() {});
              },
            );
          }),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              List selectedTopping = toopings
                  .where((e) => e['value'] == true)
                  .toList()
                  .map((e) => e['name'])
                  .toList();
              print('selected topping: $selectedTopping');
            },
            child: const Text('Get Selected topping'),
          ),
        ],
      ),
    );
  }
}
