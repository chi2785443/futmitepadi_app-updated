import 'package:flutter/material.dart';

class FutmitepadiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 30),
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
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'FUTMITEPADI',
                                style: TextStyle(
                                    color: Colors.purple.shade600,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'worksans',
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 2),
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
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Material(
                            color: Colors.purple,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 2),
                              child: Text(
                                'OUR MISSION',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'worksans',
                                    fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '   Our mission is to provide a comprehensive platform for university students that simplifies and streamlines their day-to-day life. With our app, students can easily access important information about their courses, campus news, housing, library, school calendar, scholarships, study schedules, assignments, and buy items. We aim to make the process of managing their academic life stress-free and more convenient, so that they can focus on learning and achieving their goals. In addition, our app provides a social platform that connect 22,000 students, where students can connect with peers and form study groups to collaborate on projects and assignments. Our ultimate goal is to create a community of motivated and empowered students who can make the most out of their university experience with a little help from our app.',
                          style: TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 11,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Material(
                            color: Colors.purple,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 2),
                              child: Text(
                                'OUR VISION',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'worksans',
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          '   Our vision for our app is to create a one-stop solution for university students that makes their lives easier. We understand that college life can be overwhelming, and we want to alleviate some of the stress by providing a platform that offers convenient access to valuable resources and services. Our app will be designed to assist students in managing their academic, social, and personal lives. It will include features such as a calendar to help students keep track of their class schedules, assignments, and exams. The app will also include a study schedule generator that creates a customized plan for individual study sessions.Additionally, our app will offer a marketplace for students to buy and sell used textbooks and other college-related items. We will also provide a platform for students to connect with each other and form study groups, clubs, and extracurricular activities.With our app, students will no longer have to rely on multiple websites, apps, or physical resources to manage their lives. Our aim is to simplify the lives of university students by offering a comprehensive solution that meets all their needs. We want to empower them to succeed in their academic pursuits and make the most of their college experience.',
                          style: TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 11,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Material(
                            color: Colors.purple,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 2),
                              child: Text(
                                'THE CEO',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'worksans',
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'My name is Chinedu Aguwa aka Password, a civil engineering student 400l. i got the initiative to create futmitepadi with the help of my team because we know and believe it could help thousands of student in this great institution. whatsapp @ 09017014147 and you could follow our official social accounts to get notified when every there is an update.',
                          style: TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 11,
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
    );
  }
}
