import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.blueAccent.withOpacity(0.5),
      ),
      body: const Center(
        child: Text(
          'Settings page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            ),
          ),
      ),
    );
  }
}