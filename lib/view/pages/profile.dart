import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});


  @override
  State<Profile> createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 80,
              backgroundImage: AssetImage('lib/assets/avatar.png'),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              'Sebastian',
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold
                ),
            ),
            SizedBox(height: 10),
            Text(
              'skoch2@stud.hs-heilbronn.de',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(25.0),
                child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter profile information',
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

