import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EportalPage extends StatelessWidget {
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
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
        elevation: 5.0,
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, 'notification_page');
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
        title: const Text(
          'E-portal',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.purple.shade300, blurRadius: 1)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0)),
              margin: const EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 30,
              ),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 28,
                            child:
                                Image(image: AssetImage('images/futlogo.png'))),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 0.3,
                      ),
                      const Center(
                        child: Text(
                          'OFFICIAL STUDENT PORTAL',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'sourcesanspro',
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 0.1,
                      ),
                      ListTile(
                        onTap: () {
                          _url = Uri.parse(
                              'https://eportal.futminna.edu.ng/accpt/');
                          _launchUrl();
                        },
                        trailing: const Icon(
                          Icons.near_me,
                          color: Colors.purple,
                        ),
                        title: const Text(
                          'MY E-PORTAL',
                          style: TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _url =
                              Uri.parse('https://e-results.futminna.edu.ng/');
                          _launchUrl();
                        },
                        tileColor: Colors.deepPurple,
                        trailing: const Icon(
                          Icons.school,
                          color: Colors.purple,
                        ),
                        title: const Text(
                          'MY E-RESULT',
                          style: TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _url = Uri.parse('https://mail.google.com/');
                          _launchUrl();
                        },
                        trailing: const Icon(
                          Icons.mail_outline,
                          color: Colors.purple,
                        ),
                        title: const Text(
                          'MY STUDENT EMAIL',
                          style: TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MaterialButton(
                          onPressed: () {
                            _url = Uri.parse('https://futminna.edu.ng/');
                            _launchUrl();
                          },
                          elevation: 5.0,
                          height: 35.0,
                          color: Colors.purple,
                          child: const Text(
                            'Visit futminna official website',
                            style: TextStyle(
                                fontFamily: 'worksans',
                                letterSpacing: 0.8,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
