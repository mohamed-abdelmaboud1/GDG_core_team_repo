import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_core/cache/cache_manager.dart';
import 'package:gdg_core/cache/shared_pref_helper.dart';

class SharedPrefKeys {
  static const String counter = 'counter';
  static const String repeat = 'repeat';
  static const String decimal = 'decimal';
  static const String action = 'action';
  static const String items = 'items';
}

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
          NameWidgetV2(),
          ElevatedButton(
            onPressed: () async {
              await CacheManager.setData(
                key: SharedPrefKeys.counter,
                value: 20,
              );
                await CacheManager.setData(
                key: SharedPrefKeys.repeat,
                value: 'repeat',
              );
              // await SharedPrefHelper.clearData(key: SharedPrefKeys.counter);
            },
            child: const Text('set value'),
          ),
          // SizedBox(height: 20),
          // //textForm
          // CustomTextFrom(),
          // GotoCountryBtn(),

          // SizedBox(height: 20),
          // GotoUserstn(),
          // SizedBox(height: 20),
          // GotoNumbersBtn(),
          // SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     //NewsPage
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const NewsPage()),
          //     );
          //   },
          //   child: const Text('Go to News Page'),
          // ),
        ],
      ),
    );
  }
}

class NameWidgetV2 extends StatefulWidget {
  const NameWidgetV2({super.key});

  @override
  State<NameWidgetV2> createState() => _NameWidgetV2State();
}

class _NameWidgetV2State extends State<NameWidgetV2> {
  // late int counter;

  @override
  void initState() {
    super.initState();
    // getLocalData();
  }

  // getLocalData() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   counter = prefs.getInt(SharedPrefKeys.counter) ?? 0;
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        CacheManager.getData(key: SharedPrefKeys.repeat)?.toString() ??
            'No Value',
        style: TextStyle(fontSize: 80, color: Colors.blue),
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
