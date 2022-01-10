import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_data_project/pages/home_page.dart';
import 'package:user_data_project/pages/login_page.dart';
import 'package:user_data_project/pages/profile_page.dart';
import 'package:user_data_project/pages/user_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    UserListPage(),
    ProfilePage(),
  ];
  int currentIndex = 1;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              label: 'EXIT',
              icon: Icon(
                Icons.exit_to_app_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: 'USER',
              icon: Icon(
                Icons.person_outline,
              ),
            ),
            BottomNavigationBarItem(
              label: 'PROFILE',
              icon: Icon(
                Icons.person_outline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
