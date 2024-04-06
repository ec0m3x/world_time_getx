import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text('Edit profile'),
        backgroundColor: Colors.blueAccent.withOpacity(0.5),
      ),
      body: const Center(
        child: Text(
          'Edit profile page',
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