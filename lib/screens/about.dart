import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'This is the About Page',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',      // Route to Login
                      (route) => false, // Remove all previous routes
                );
              },
              child: const Text('Go back to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
