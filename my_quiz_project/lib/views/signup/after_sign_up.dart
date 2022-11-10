import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_quiz_project/views/login/login_screen.dart';

class AfterSigningup extends StatefulWidget {
  const AfterSigningup({Key? key}) : super(key: key);

  @override
  State<AfterSigningup> createState() => _AfterSigningupState();
}

class _AfterSigningupState extends State<AfterSigningup> {
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Congratulations! You are successfully signed up!')),
    );
  }
}
