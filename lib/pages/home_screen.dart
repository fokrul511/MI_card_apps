import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/desig.dart';
import 'package:share_plus/share_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: [
            IconButton(
              onPressed: () {
                shareonpresser();
              },
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.teal,
        body: Column(
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
            const SizedBox(
              height: 20,
            ),
            PhoneEmail(
              onTap: () async {
                final Uri url = Uri(
                  scheme: 'tel',
                  path: '+8801726032986',
                );
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {}
              },
              icons: Icons.phone,
              text: '+8801726-032986',
            ),
            const PhoneEmail(
              icons: Icons.email_outlined,
              text: 'islamfokrul2002@gmail.com',
              iconsN: Icons.qr_code,
            ),
          ],
        ),
      ),
    );
  }

  void shareonpresser() {
    String message =
        'https://drive.google.com/file/d/10aEFX_eLznUL_u1Z0GmxC8q-EYSBMD2g/view?usp=drive_link';

    Share.share(message);
  }
}
