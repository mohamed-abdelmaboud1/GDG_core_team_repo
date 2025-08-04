import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_core/ui/goto_country_btn.dart';
import 'package:gdg_core/ui/goto_userstn.dart';
import 'package:gdg_core/ui/news_page.dart';

import 'goto_numbers_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final currentTheme = ref.watch(themeProvider);
    // provider --> read - watch - access
    // notifier --> update
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     final updatedTheme =
      //         (currentTheme == ThemeData.light())
      //             ? ThemeData.dark()
      //             : ThemeData.light();
      //     // ref.read(themeProvider.notifier).state = ThemeData.dark();
      //     ref.read(themeProvider.notifier).update((state) => updatedTheme);
      //   },
      //   heroTag: 'chnageTheme',
      //   child: Icon(Icons.star_rate),
      // ),
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Riverpod Example')),
      body: Column(
        children: [
          NameWidget(),
          SizedBox(height: 20),
          //textForm
          CustomTextFrom(),
          GotoCountryBtn(),

          SizedBox(height: 20),
          GotoUserstn(),
          SizedBox(height: 20),
          GotoNumbersBtn(),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              //NewsPage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewsPage()),
              );
            },
            child: const Text('Go to News Page'),
          ),
        ],
      ),
    );
  }
}

class NameWidget extends ConsumerWidget {
  const NameWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myName = ref.watch(changeNameProvider);
    log('NameWidget rebuild');
    return Text(myName, style: Theme.of(context).textTheme.titleLarge);
  }
}

class CustomTextFrom extends StatelessWidget {
  const CustomTextFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        log('rebuild TextFormField');
        return TextField(
          decoration: InputDecoration(
            labelText: 'Enter your name',
            border: OutlineInputBorder(),
          ),
          onSubmitted: (value) {
            // ref.read(changeNameProvider.notifier).state = value;
            ref.read(changeNameProvider.notifier).update((state) => value);
          },
        );
      },
    );
  }
}

final changeNameProvider = StateProvider((ref) {
  return '';
});

// ---------------- //
final myProvider = Provider<String>((ref) {
  final name = ref.read(nameProvider);
  return 'Hello, $name';
});
final nameProvider = Provider<String>((ref) {
  return 'Mohamed';
});
final ageProvider = Provider<int>((ref) {
  return 16;
});
final isAdultProvider = Provider<bool>((ref) {
  final age = ref.read(ageProvider);
  if (age >= 18) {
    return true;
  } else {
    return false;
  }
});
