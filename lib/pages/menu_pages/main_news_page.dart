import 'package:flutter/material.dart';

class MainNewsPage extends StatefulWidget {
  const MainNewsPage({Key? key}) : super(key: key);

  @override
  State<MainNewsPage> createState() => _MainNewsPageState();
}

class _MainNewsPageState extends State<MainNewsPage> {
  late Text headertext;
  late Text date;
  late String url;
  late Text body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple.shade500,
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
            'Campus News',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              letterSpacing: 1.0,
            ),
          ),
        ),
        body:  ListView(

        ),
   );
  }
}
