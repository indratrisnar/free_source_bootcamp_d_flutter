import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Message'),
              Tab(text: 'Story'),
              Tab(text: 'Activity'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.message),
            Icon(Icons.rss_feed),
            Icon(Icons.history),
          ],
        ),
      ),
    );
  }
}
