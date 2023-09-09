import 'package:flutter/material.dart';
import 'package:guido/homePageScreens/profile.dart';
import 'package:guido/screens/login.dart';
import 'package:guido/screens/register.dart';
import 'package:guido/screens/splash.dart';

import 'homePageScreens/_bottomnavBar.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guido',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Login(),
      home:const BottomNavBar(),
      // home: const User01(),
      // home: ProfilePage(),
      // home: const Splash(),
      // home: Authentication(),
      // home: const ProfilePage(),
      // home: const ChatPage(),
    );
  }
}
