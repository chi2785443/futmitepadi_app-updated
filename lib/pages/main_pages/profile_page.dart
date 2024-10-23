import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

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
          'Profile',
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
                  borderRadius: BorderRadius.circular(10.0)),
              margin: const EdgeInsets.symmetric(
                vertical: 30,
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
                      Center(
                        child: Text(
                          'Username',
                          style: const TextStyle(
                            fontFamily: 'pacifico',
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const Divider(
                        height: 30,
                        color: Colors.black,
                        thickness: 0.3,
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.school,
                          color: Colors.purple,
                        ),
                        title: Text(
                          'STUDENT MEMBER',
                          style: TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.mail_outline,
                          color: Colors.purple,
                        ),
                        title: Text(
                          'E-mail: useremail',
                          style: const TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.popUntil(context, (route) => true);
                          },
                          elevation: 5.0,
                          height: 35.0,
                          color: Colors.purple,
                          child: const Text(
                            'Log out',
                            style: TextStyle(
                                fontFamily: 'worksans',
                                letterSpacing: 0.8,
                                fontSize: 15,
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
