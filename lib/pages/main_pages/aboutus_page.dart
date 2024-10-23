import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutusPage extends StatefulWidget {
  @override
  State<AboutusPage> createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
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
          'About us',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.purple.shade100,
                  backgroundImage: const AssetImage('images/team.png'),
                  radius: 70,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.purple.shade300, blurRadius: 1)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Futmitepadi TEAM',
                                style: TextStyle(
                                    color: Colors.purple.shade600,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'worksans',
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              child: Text(
                                'Empower your education with ease, let our app be your guide.',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.03,
                                    fontFamily: 'worksans',
                                    fontSize: 10),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 0.2,
                          ),
                          ListTile(
                            onTap: () {
                              _url = Uri.parse('');
                              _launchUrl();
                            },
                            trailing: const Icon(
                              Icons.star_border_outlined,
                              color: Colors.purple,
                            ),
                            title: const Text(
                              'Rate our app',
                              style: TextStyle(
                                fontFamily: 'sourcesanspro',
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const Material(
                            color: Colors.purple,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 2),
                              child: Text(
                                'CONTACT US',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'worksans',
                                    fontSize: 10),
                              ),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              _url = Uri.parse('');
                              _launchUrl();
                            },
                            trailing: const Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.purple,
                            ),
                            title: const Text(
                              'Futmitepadi on IG',
                              style: TextStyle(
                                fontFamily: 'sourcesanspro',
                                fontSize: 14,
                              ),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              _url = Uri.parse('');
                              _launchUrl();
                            },
                            trailing: const Icon(
                              Icons.install_desktop,
                              color: Colors.purple,
                            ),
                            title: const Text(
                              'join our whatsapp community',
                              style: TextStyle(
                                fontFamily: 'sourcesanspro',
                                fontSize: 14,
                              ),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              _url = Uri.parse('');
                              _launchUrl();
                            },
                            trailing: const Icon(
                              Icons.facebook_outlined,
                              color: Colors.purple,
                            ),
                            title: const Text(
                              'join our facebook platform',
                              style: TextStyle(
                                fontFamily: 'sourcesanspro',
                                fontSize: 14,
                              ),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              _url = Uri.parse('');
                              _launchUrl();
                            },
                            trailing: const Icon(
                              Icons.update_outlined,
                              color: Colors.purple,
                            ),
                            title: const Text(
                              'Update version',
                              style: TextStyle(
                                fontFamily: 'sourcesanspro',
                                fontSize: 14,
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
        ),
      ),
    );
  }
}
