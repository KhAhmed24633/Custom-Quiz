import 'package:flutter/material.dart';
import 'package:my_quiz_project/views/constant/constants.dart';
import 'package:my_quiz_project/views/signup/after_sign_up.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Quiz App',
                    style: TextStyle(fontSize: 60),
                  ),
                ),
                sizebox30,
                Row(
                  children: const [
                    Text('Sign UP',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
                sizebox10,
                Card(
                  child: Column(
                    children: [
                      sizebox10,
                      TextField(
                        keyboardType: TextInputType.name,
                        keyboardAppearance: Brightness.light,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: ktextsize20,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      sizebox10,
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        keyboardAppearance: Brightness.light,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: ktextsize20,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      sizebox10,
                      TextField(
                        keyboardType: TextInputType.phone,
                        keyboardAppearance: Brightness.light,
                        decoration: InputDecoration(
                          labelText: 'Mobile No #',
                          labelStyle: ktextsize20,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      sizebox10,
                      TextField(
                        keyboardType: TextInputType.datetime,
                        keyboardAppearance: Brightness.light,
                        decoration: InputDecoration(
                          labelText: 'D.O.B',
                          labelStyle: ktextsize20,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      sizebox10,
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        keyboardAppearance: Brightness.light,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: ktextsize20,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      sizebox10,
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        keyboardAppearance: Brightness.light,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: ktextsize20,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      sizebox10,
                    ],
                  ),
                ),
                sizebox20,
                Center(
                  child: InkWell(
                    onTap: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AfterSigningup(),
                        ),
                      );
                    }),
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 243, 65, 184),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: ktextsize20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
