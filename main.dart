import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Pages/Already_ac/Already_ac.dart';
import 'package:flutter_application_1/Pages/Google_login/Google_login.dart';
import 'package:flutter_application_1/Pages/Home/HPage.dart';
import 'package:flutter_application_1/Pages/Home/gnavPage.dart';
import 'package:flutter_application_1/Pages/Login_page/Login_page.dart';
import 'package:flutter_application_1/Pages/Notification/NotificationPage.dart';
import 'package:flutter_application_1/Pages/Setting/SettingsPage.dart';
import 'package:flutter_application_1/Pages/profile/profile_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MainApp());
}
// 
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TecBus",
      initialRoute: "/Google",
      routes: {
        "/Google": (context) => const Google_login(),
        "/Login": (context) => const Login_page(),
        "/Home": (context) => const HPage(),
        "/Alreadyac": (context) => const Alreadyac(),
        "/notification": (context) => const NotificationPage(),
        "/settings": (context) => const SettingsPage(),
        "/profile": (context) => const ProfilePage(),
        "/GnavPage": (context) => const GnavPage()
      },
    );
  }
}
