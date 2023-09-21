import 'package:flutter/material.dart';

class GmailQR extends StatelessWidget {
  const GmailQR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email QR'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/qr.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
