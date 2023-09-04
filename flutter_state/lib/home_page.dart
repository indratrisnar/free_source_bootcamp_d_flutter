import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    print('-------------- createState()');
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late int number;
  @override
  void initState() {
    print('-------------- initState()');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('-------------- didChangeDependencies()');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('-------------- build()');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
    );
  }

  @override
  void deactivate() {
    print('-------------- deactivate()');
    super.deactivate();
  }

  @override
  void dispose() {
    print('-------------- dispose()');
    super.dispose();
  }
}
