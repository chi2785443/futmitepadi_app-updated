import 'package:flutter/material.dart';
import 'package:futmitepadi/pages/main_pages/profile_page.dart';
import 'aboutus_page.dart';
import 'dashboardpage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List pages = [
    Dashboard(),
    ProfilePage(),
    AboutusPage(),
  ];

  int currentindex = 0;

  void ontap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentindex],
        // backgroundColor: Colors.purple.shade50,
        bottomNavigationBar: BottomNavigationBar(
          onTap: ontap,
          currentIndex: currentindex,
          iconSize: 16,
          selectedItemColor: Colors.purple.shade700,
          unselectedItemColor: Colors.black,
          selectedFontSize: 12,
          unselectedFontSize: 8,
          elevation: 12.0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label: 'About us',
            )
          ],
        ));
  }
}
