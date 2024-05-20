import 'package:flutter/material.dart';
import 'package:g_friends/intro_pages/home_page.dart';
import 'onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
