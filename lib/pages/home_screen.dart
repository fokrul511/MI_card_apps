import 'package:flutter/material.dart';

import 'desig.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'images/Fokrul (2).jpeg',
              ),
            ),
            const Text(
              'Fokrul Islam',
              style: TextStyle(
                fontFamily: 'Dancing',
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                letterSpacing: 2.5,
                fontFamily: 'Robot',
                color: Colors.teal[100],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PhoneEmail(
              icons: Icons.phone,
              text: '+8801726-032986',
            ),
            PhoneEmail(
              icons: Icons.email_outlined,
              text: 'islamfokrul2002@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}
