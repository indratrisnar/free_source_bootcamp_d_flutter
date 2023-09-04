import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Display Small',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            'Headline Large',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Copy Style',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Colors.amber,
                ),
          ),
          Text(
            'Mix Style',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          Text(
            'My Own Style on labelSmall',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
