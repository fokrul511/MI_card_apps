import 'package:flutter/material.dart';

class PhoneEmail extends StatelessWidget {
  const PhoneEmail({
    super.key,
    required this.icons,
    required this.text,
  });
  final IconData icons;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icons,
                size: 40,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
