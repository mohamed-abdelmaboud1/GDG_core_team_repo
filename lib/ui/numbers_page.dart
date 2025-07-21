import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumbersPage extends ConsumerWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Numbers')),
      body: Center(
        child: Text(
          'randomNumber',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
