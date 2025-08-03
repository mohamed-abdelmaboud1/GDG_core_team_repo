import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gdg_core/ui/users_page.dart';

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


