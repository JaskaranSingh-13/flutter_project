// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  final String name = 'Jaskaran Singh';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.green),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage("assets/images/bg.avif"),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 28.0),
                  child: Text('Jaskaran Singh',
                      style: TextStyle(color: Colors.yellow, fontSize: 22)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
