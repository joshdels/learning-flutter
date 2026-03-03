import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Username or email',
            ),
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text("Sign In"),
            ),
          ),
          SizedBox(height: 20),
          Text('New User? Link'),
          SizedBox(height: 10),
          Text(
            'The easiest way to transfer you projects from QGIS to your Devices.! Link',
          ),
          GestureDetector(
            onTap: () async {
              final Uri url = Uri.parse("https://qgis.org");
              await launchUrl(url);
            },
            child: const Text(
              "Visit QGIS Website",
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
