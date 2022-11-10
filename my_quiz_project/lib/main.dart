import 'package:flutter/material.dart';
import 'package:my_quiz_project/views/login/login_screen.dart';
import 'package:my_quiz_project/views/signup/signup_screen.dart';
import 'package:my_quiz_project/views/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const
          //
          LoginScreen(),
      // SignupScreen()
      // SplashScreen(),
    );
  }
}
