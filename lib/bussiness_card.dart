import 'package:flutter/material.dart';

void main() {
  runApp(MyCardApp());
}

class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/safi.jpg'),
              ),
              const Text(
                'Safiullah Yusufzai',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'IT ENGINEER',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20),
              const Divider(color: Colors.white70, indent: 50, endIndent: 50),
              ContactCard(
                icon: Icons.mail,
                text: 'safiullahyusufzai10@gmail.com',
              ),
              ContactCard(
                icon: Icons.phone,
                text: '+93 70 333 1780',
              ),
              ContactCard(
                icon: Icons.link,
                text: 'https://github.com/safi007-max',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactCard({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      child: ListTile(
        leading: Icon(icon, color: Colors.pink),
        title: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
