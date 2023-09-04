import 'package:flutter/material.dart';

class DarwerPage extends StatefulWidget {
  const DarwerPage({super.key});

  @override
  State<DarwerPage> createState() => _DarwerPageState();
}

class _DarwerPageState extends State<DarwerPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Row(
                children: [
                  FlutterLogo(size: 80),
                  Text('Username'),
                ],
              ),
            ),
            const Text('Menu'),
            ListTile(
              onTap: () {
                currentIndex = 0;
                setState(() {});
                Navigator.pop(context);
              },
              leading: const Icon(Icons.message),
              title: const Text('Message'),
              trailing: const Icon(Icons.navigate_next),
            ),
            ListTile(
              onTap: () {
                currentIndex = 1;
                setState(() {});
                Navigator.pop(context);
              },
              leading: const Icon(Icons.history),
              title: const Text('History'),
              trailing: const Icon(Icons.navigate_next),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
      body: Center(
        child: currentIndex == 0
            ? const Text(
                'Message',
              )
            : const Text(
                'History',
              ),
      ),
    );
  }
}
