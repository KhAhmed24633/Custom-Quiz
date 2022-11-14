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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 248, 216, 32),
      appBar: AppBar(
        title: const Text('Login',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
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
                Container(
                  height: 35,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      }
                    },
                    child: const Center(
                      child: Text(
                        'Login',
                        style: ktextsize20,
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
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      controller: emailcontroller,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        prefixIcon: const Icon(
          Icons.email,
          color: coloricon,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.black)),
      ),
      onSaved: (newValue) {
        email = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          // setState(() {});
        } else if (emailValidatorRegExp.hasMatch(value)) {}
        return;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      controller: passwordcontroller,
      textInputAction: TextInputAction.done,
      obscureText: true,
      obscuringCharacter: '*',
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: const Icon(Icons.password, color: coloricon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
      onSaved: (newValue) {
        password = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          // setState(() {});
        } else if (shortpasswordvalidatorRegExp.hasMatch(value)) {
        } else if (passwordvalidatorRegExp.hasMatch(value)) {}
        return;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kPasswordNullError;
        } else if (!shortpasswordvalidatorRegExp.hasMatch(value)) {
          return kShortPasswordError;
        } else if (!passwordvalidatorRegExp.hasMatch(value)) {
          return kPasswordError;
        }
        return null;
      },
    );
  }
}
