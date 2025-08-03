import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gdg_core/ui/numbers_page.dart';

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
