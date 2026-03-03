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
          Image.asset('assets/sample1.png', width: 150),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Username or email',
            ),
          ),
          SizedBox(height: 8),
          PasswordField(),
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

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordField();
}

class _PasswordField extends State<PasswordField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isHidden,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: 'Password',
        suffixIcon: IconButton(
          icon: Icon(_isHidden ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            setState(() {
              _isHidden = !_isHidden;
            });
          },
        ),
      ),
    );
  }
}
