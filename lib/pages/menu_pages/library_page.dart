import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {

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
            'Library',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              letterSpacing: 1.0,
            ),
          ),
        ),
        body:  ListView()

      //       )
    );
  }
}
