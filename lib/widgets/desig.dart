import 'package:flutter/material.dart';
import 'package:mi_card_apps/widgets/gmail_qr.dart';

class PhoneEmail extends StatelessWidget {
  const PhoneEmail({
    super.key,
    required this.icons,
    required this.text,
    this.iconsN,
    this.onTap,
  });
  final IconData icons;
  final String text;
  final Function()? onTap;
  final IconData? iconsN;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
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
                  width: 10,
                ),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: GestureDetector(
                    onTap: onTap,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GmailQR()));
                      },
                      child: Icon(
                        iconsN,
                        size: 30,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
