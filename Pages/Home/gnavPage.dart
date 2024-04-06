import 'package:flutter/material.dart';

import 'package:flutter_application_1/Pages/Home/HPage.dart';
import 'package:flutter_application_1/Pages/Notification/NotificationPage.dart';
import 'package:flutter_application_1/Pages/Setting/SettingsPage.dart';
import 'package:flutter_application_1/Pages/profile/profile_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GnavPage extends StatefulWidget {
  const GnavPage({super.key});

  @override
  State<GnavPage> createState() => _GnavPageState();
}

class _GnavPageState extends State<GnavPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HPage(),
    NotificationPage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _widgetOptions.elementAt(_selectedIndex),
          Positioned(
            bottom: 1,
            left: 5,
            right: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 7),
              decoration: BoxDecoration(
                color: const Color.fromARGB(225, 0, 67, 201),
                borderRadius: BorderRadius.circular(26),
              ),
              child: GNav(
                tabBackgroundColor: Colors.white54,
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 9, horizontal: 15),
                tabs: const [
                  GButton(
                    gap: 4,
                    icon: Icons.home_outlined,
                    iconColor: Colors.white,
                    text: "Home",
                  ),
                  GButton(
                    gap: 8,
                    iconColor: Colors.white,
                    icon: Icons.notifications_none,
                    text: "Notification",
                  ),
                  GButton(
                    gap: 8,
                    iconColor: Colors.white,
                    icon: Icons.person_outline,
                    text: "Profile",
                  ),
                  GButton(
                    gap: 8,
                    iconColor: Colors.white,
                    icon: Icons.settings,
                    text: "Settings",
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
