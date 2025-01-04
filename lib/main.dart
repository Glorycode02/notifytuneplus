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
      initialRoute: "/homepage",
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

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Notify Tune +',
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
//         ),
//       ), 

//       body: ,
//       bottomNavigationBar: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home)),
//             BottomNavigationBarItem(icon: Icon(Icons.message)),
//             BottomNavigationBarItem(icon: Icon(Icons.notifications)),
//             BottomNavigationBarItem(icon: Icon(Icons.account_box))
//           ]),
//     );
//   }
// }
