import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Hello...',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  letterSpacing: 1,
                                  fontSize: 16.0,
                                  fontFamily: 'sourcesanspro',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Your personal assistant',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'worksans',
                                  color: Colors.purple.shade800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.purple.shade500,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Menutiles(
                        title: 'Upgrade membership',
                        subtext: 'Become our agent?'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    children: [
                      Menu_card(
                        ontap: () {
                          Navigator.pushNamed(
                              context, 'news_introduction_page');
                        },
                        headertext: 'CAMPUS NEWS',
                        subtext: 'updates',
                        cardwidget: Icon(
                          Icons.newspaper_outlined,
                          size: 50,
                          color: Colors.purple.shade500,
                        ),
                      ),
                      Menu_card(
                        ontap: () {
                          Navigator.pushNamed(
                              context, 'library_introduction_page');
                        },
                        headertext: 'LIBRARY',
                        subtext: 'download pdfs',
                        cardwidget: Icon(
                          Icons.library_books_outlined,
                          size: 50,
                          color: Colors.purple.shade500,
                        ),
                      ),
                      Menu_card(
                        ontap: () {
                          Navigator.pushNamed(
                              context, 'pretest_introduction_page');
                        },
                        headertext: 'PRE-TEST',
                        subtext: 'practice',
                        cardwidget: Icon(
                          Icons.quiz_outlined,
                          size: 50,
                          color: Colors.purple.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    children: [
                      Menu_card(
                        ontap: () {
                          Navigator.pushNamed(
                              context, 'calendar_introduction_page');
                        },
                        headertext: 'CALENDAR',
                        subtext: 'School calendar',
                        cardwidget: Icon(
                          Icons.calendar_month_outlined,
                          size: 50,
                          color: Colors.purple.shade500,
                        ),
                      ),
                      Menu_card(
                        ontap: () {
                          Navigator.pushNamed(
                              context, 'services_introduction_page');
                        },
                        headertext: 'SERVICES',
                        subtext: 'Our services',
                        cardwidget: Icon(
                          Icons.contact_support_outlined,
                          size: 50,
                          color: Colors.purple.shade500,
                        ),
                      ),
                      Menu_card(
                        ontap: () {
                          Navigator.pushNamed(
                              context, 'scholarship_introduction_page');
                        },
                        headertext: 'SCHOLARSHIPS',
                        subtext: '100% update',
                        cardwidget: Icon(
                          Icons.verified_user_outlined,
                          size: 50,
                          color: Colors.purple.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: Row(
                    children: [
                      Menu_card(
                        ontap: () {
                          Navigator.pushNamed(
                              context, 'courses_introduction_page');
                        },
                        headertext: 'COURSES',
                        subtext: 'learn a skill',
                        cardwidget: Icon(
                          Icons.model_training_outlined,
                          size: 50,
                          color: Colors.purple.shade500,
                        ),
                      ),
                      Menu_card(
                        ontap: () {
                          Navigator.pushNamed(
                              context, 'eportal_introduction_page');
                        },
                        headertext: 'E-PORTAL',
                        subtext: 'Student portal',
                        cardwidget: Icon(
                          Icons.school_outlined,
                          size: 50,
                          color: Colors.purple.shade500,
                        ),
                      ),
                      Menu_card(
                        ontap: () {
                          Navigator.pushNamed(context, 'futmitepadi_page');
                        },
                        headertext: 'FUTMITEPADI',
                        subtext: 'Your assistant',
                        cardwidget: Icon(
                          Icons.policy_outlined,
                          size: 50,
                          color: Colors.purple.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Menutiles(
                      title: 'Need help?',
                      subtext: 'Chat with our costumer support',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade100,
        child: const Icon(Icons.chat, color: Colors.purple),
        onPressed: () {
          Navigator.pushNamed(context, 'chat_introduction_page');
        },
      ),
    );
  }
}
