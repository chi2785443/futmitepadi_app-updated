import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {

  late Text headertext;
  late Text date;
  late String url;
  late Text body;

  late Uri _url;

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

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
          'Courses',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: ListView(
            children: []
      ),
    );
  }
}
