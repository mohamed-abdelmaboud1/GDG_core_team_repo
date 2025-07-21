import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdg_core/ui/numbers_page.dart';
import 'package:gdg_core/ui/random_country_page.dart';
import 'package:gdg_core/ui/users_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final value = ref.watch(changeNameProvider);
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
        ],
      ),
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});
  @override
  Widget build(BuildContext context) {
    log('NameWidget rebuild');
    return Consumer(
      builder:
          (_, ref, child) => Center(
            child: Text(
              ref.watch(changeNameProvider),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
    );
  }
}

class GotoNumbersBtn extends StatelessWidget {
  const GotoNumbersBtn({super.key});

  @override
  Widget build(BuildContext context) {
    log('GotoNumbersBtn rebuild');
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NumbersPage()),
        );
      },
      child: const Text('Go to Random Numbers Page'),
    );
  }
}

class GotoUserstn extends StatelessWidget {
  const GotoUserstn({super.key});

  @override
  Widget build(BuildContext context) {
    log('GotoUserstn rebuild');
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const UsersPage()),
        );
      },
      child: const Text('Go to Users Page'),
    );
  }
}

class GotoCountryBtn extends StatelessWidget {
  const GotoCountryBtn({super.key});

  @override
  Widget build(BuildContext context) {
    log('GotoCountryBtn rebuild');
    return ElevatedButton(
      onPressed: () {
        // Navigate to the second page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RandomCountryPage()),
        );
      },
      child: const Text('Go to Random Name Page'),
    );
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
            ref.read(changeNameProvider.notifier).state = value;
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
