import 'package:flutter/material.dart';
import 'package:my_quiz_project/views/constant/constants.dart';
import 'package:my_quiz_project/views/signup/after_sign_up.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  String? firstname, lastname, email, password, confirmpassword, birth, phone;
  final _signupformkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
        body: Form(
          key: _signupformkey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      'Quiz App',
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  sizebox30,
                  Row(
                    children: const [
                      Text('Create a New Account',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  sizebox10,
                  Card(
                    child: Column(
                      children: [
                        sizebox10,
                        buildFisrtNameField(),
                        sizebox5,
                        buildLastNameField(),
                        sizebox5,
                        buildPhoneField(),
                        sizebox5,
                        buildEmailField(),
                        sizebox5,
                        buildPasswordField(),
                        sizebox5,
                        buildConfirmPasswordField(),
                        sizebox10,
                      ],
                    ),
                  ),
                  sizebox10,
                  Container(
                    height: 35,
                    width: 150,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_signupformkey.currentState!.validate()) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const AfterSigningup(),
                            ),
                          );
                        }
                      },
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: ktextsize20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  TextFormField buildFisrtNameField() {
    return TextFormField(
      controller: firstnamecontroller,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: 'First Name',
        prefixIcon: const Icon(
          Icons.person,
          color: coloricon,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.black)),
      ),
      onSaved: (newValue) {
        firstname = newValue;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter your First Name';
        }
        return null;
      },
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      controller: lastnamecontroller,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: 'Last Name',
        prefixIcon: const Icon(
          Icons.person,
          color: coloricon,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.black)),
      ),
      onSaved: (newValue) {
        lastname = newValue;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter your Last Name';
        }
        return null;
      },
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
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter your Email';
        }
        return null;
      },
    );
  }

  TextFormField buildPhoneField() {
    return TextFormField(
      controller: phonecontroller,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'Mobile No#',
        prefixIcon: const Icon(
          Icons.phone,
          color: coloricon,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.black)),
      ),
      onSaved: (newValue) {
        phone = newValue;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kMobileNullError;
        } else if (!phonevalidatorRegExp.hasMatch(value)) {
          return '';
        }

        return null;
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      controller: passwordcontroller,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: const Icon(
          Icons.password,
          color: coloricon,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.black)),
      ),
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

  TextFormField buildConfirmPasswordField() {
    return TextFormField(
      controller: confirmpasswordcontroller,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        prefixIcon: const Icon(
          Icons.password,
          color: coloricon,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.black)),
      ),
      onSaved: (newValue) {
        confirmpassword = newValue;
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
