// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:notifytuneplus/pages/chats_page.dart';
import 'package:notifytuneplus/pages/home_page.dart';
import 'package:notifytuneplus/pages/intro_page.dart';
import 'package:notifytuneplus/pages/notifications_page.dart';
import 'package:notifytuneplus/pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/intropage",
      home: IntroPage(),
      routes: {
        "/homepage": (context) => HomePage(),
        "/chats": (context) => ChatsPage(),
        "/notifications": (context) => NotificationsPage(),
        "/profile": (context) => ProfilePage()
      },
    );
  }
}

