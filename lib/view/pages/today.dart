import 'package:flutter/material.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text('Todays task'),
        backgroundColor: Colors.blueAccent.withOpacity(0.5),
      ),
      body: const Center(
        child: Text(
          'Todays task page',
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