import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text('Add a task'),
        backgroundColor: Colors.blueAccent.withOpacity(0.5),
      ),
      body: const Center(
        child: Text(
          'Add a task page',
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