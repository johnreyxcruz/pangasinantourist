import 'package:flutter/material.dart';
import 'package:pangasinantourist/MainPage/main_page.dart';
import 'package:pangasinantourist/NavBar/navbar.dart';


void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.blue, Colors.white54],
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              MainPage(),
            ],
          ),
            ),
          ),
    );
  }
}
