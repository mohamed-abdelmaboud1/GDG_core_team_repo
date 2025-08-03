import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gdg_core/ui/random_country_page.dart';

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
      child: const Text('Go to Random Country Page'),
    );
  }
}

