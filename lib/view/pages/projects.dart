import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text('Projects'),
        backgroundColor: Colors.blueAccent.withOpacity(0.5),
      ),
      body: const Center(
        child: Text(
          'Projects page',
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

