import 'package:flutter/material.dart';

import 'package:flutter_project/screens/my_home_page.dart';
import 'package:flutter_project/screens/Settings.dart';
import 'package:flutter_project/screens/Profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/settings': (context) => const Settings(),
        '/profile': (context) => const Profile(),      
        }
    );
  }
}
