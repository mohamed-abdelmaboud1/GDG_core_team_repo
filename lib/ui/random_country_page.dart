import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'users_page.dart';

class RandomCountryPage extends StatelessWidget {
  const RandomCountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Name')),
      body: Column(
        children: [
          Consumer(
            child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UsersPage(),
                          ),
                        );
                      },
                      child: const Text('Go to Users Page'),
                    ),
            builder:
                (_, ref, child) => Column(
                  children: [
                    Center(
                      child: Text(
                        ref.watch(countryProvider),
                        style: TextStyle(color: Colors.blue, fontSize: 50),
                      ),
                    ),
                    if(child!=null) child,
                    // ?child,
                  ],
                ),
          ),
          Center(
            child: Text(
              'random Country1',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Center(
            child: Text(
              'random Country2',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
      floatingActionButton: Consumer(
        builder:
            (_, ref, _) => ElevatedButton(
              onPressed: () {
                List<String> randoms = List.from(countries);
                randoms.shuffle();
                ref
                    .read(countryProvider.notifier)
                    .update((state) => randoms.last);
              },
              child: const Text('Change Country'),
            ),
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
final countryProvider = StateProvider<String>((ref) {
  return countries[0];
  return '';
});
