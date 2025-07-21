import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomCountryPage extends ConsumerWidget {
  const RandomCountryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Name')),
      body: Center(
        child: Text(
          'randomName',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          List<String> randoms = List.from(countries);
          randoms.shuffle();
        },
        child: const Text('Change Name'),
      ),
    );
  }
}

List<String> countries = [
  'Egypt',
  'USA',
  'Canada',
  'Germany',
  'France',
  'Italy',
  'Spain',
  'Japan',
  'China',
  'India',
];
