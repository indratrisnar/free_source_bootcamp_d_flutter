import 'package:flutter/material.dart';

class I5 extends StatefulWidget {
  const I5({super.key});

  @override
  State<I5> createState() => _I5State();
}

class _I5State extends State<I5> {
  bool notification = false;
  bool reminder = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notification'),
            trailing: Switch(
              value: notification,
              onChanged: (value) {
                notification = value;
                setState(() {});
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.timer_sharp),
            title: const Text('Reminder'),
            trailing: Switch(
              value: reminder,
              onChanged: (value) {
                reminder = value;
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
