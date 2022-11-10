import 'dart:async';

import 'package:flutter/material.dart';

import 'package:my_quiz_project/views/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        // child: Center(
        //   child: Image.asset(
        //     'assets/images/logo.png',
        //     height: 20,
        //     width: 20,
        //     fit: BoxFit.cover,
        //   ),
        // ),
      ),
    );
  }
}
