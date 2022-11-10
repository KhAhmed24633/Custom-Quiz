import 'package:flutter/material.dart';
import 'package:my_quiz_project/views/constant/constants.dart';
import 'package:my_quiz_project/views/profile/profile_screen.dart';
import 'package:my_quiz_project/views/signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 248, 216, 32),
      appBar: AppBar(
        title: const Text('Login',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.network(
                        'https://cdn.dribbble.com/users/1331452/screenshots/6696000/quiz_icon.png?compress=1&resize=768x576&vertical=top',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
              sizebox30,
              const Center(
                  child: Text(
                'WELCOME',
                style: TextStyle(fontSize: 60),
              )),
              sizebox30,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Login',
                      style: ktextsize30,
                    ),
                  ),
                ],
              ),
              sizebox20,
              Card(
                // color: const Color.fromARGB(255, 248, 216, 32),
                shadowColor: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildEmailField(),

                    //   TextField(
                    //     keyboardType: TextInputType.emailAddress,
                    //     keyboardAppearance: Brightness.light,
                    //     decoration: InputDecoration(
                    //       labelText: 'Email',
                    //       labelStyle: ktextsize20,
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(20),
                    //       ),
                    //     ),
                    //   ),
                    sizebox10,

                    buildPasswordField(),
                    // TextField(
                    //   keyboardAppearance: Brightness.light,
                    //   obscureText: true,
                    //   keyboardType: TextInputType.visiblePassword,
                    //   decoration: InputDecoration(
                    //     labelText: 'Password',
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              sizebox20,
              Center(
                child: InkWell(
                  onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  }),
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 26, 209, 72),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: ktextsize20,
                      ),
                    ),
                  ),
                ),
              ),
              sizebox10,
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const SignupScreen()),
                  );
                },
                child: const Text(
                  'Create new Account',
                  style: ktextsize20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      controller: emailcontroller,
      textInputAction: TextInputAction.next,
      onSaved: (newValue) {
        email = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {});
        } else if (emailValidatorRegExp.hasMatch(value)) {}
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        prefixIcon: const Icon(Icons.email),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black)),
      ),
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      controller: passwordcontroller,
      textInputAction: TextInputAction.done,
      onSaved: (newValue) {
        password = newValue;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        }
        // return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: const Icon(Icons.password),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
