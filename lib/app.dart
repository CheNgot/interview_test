import 'package:flutter/material.dart';
import 'package:interview_test/screens/splash/splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}