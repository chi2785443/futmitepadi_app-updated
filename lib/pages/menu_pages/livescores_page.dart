import 'package:flutter/material.dart';

class LivescoresPage extends StatefulWidget {
  @override
  State<LivescoresPage> createState() => _LivescoresPageState();
}

class _LivescoresPageState extends State<LivescoresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'notification_page');
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
        title: const Text(
          'Livescores',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: ListView(
      ),
    );
  }
}
