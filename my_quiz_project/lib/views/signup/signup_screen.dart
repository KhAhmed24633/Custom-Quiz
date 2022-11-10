import 'package:flutter/material.dart';
import 'package:my_quiz_project/views/constant/constants.dart';
import 'package:my_quiz_project/views/signup/after_sign_up.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController birthcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  String? name, email, password, confirmpassword, birth, phone;
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
                      buildNameField(),

                      // TextField(
                      //   keyboardType: TextInputType.name,
                      //   keyboardAppearance: Brightness.light,
                      //   decoration: InputDecoration(
                      //     labelText: 'Name',
                      //     labelStyle: ktextsize20,
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //   ),
                      // ),
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
                      buildPhoneField(),

                      // TextField(
                      //   keyboardType: TextInputType.phone,
                      //   keyboardAppearance: Brightness.light,
                      //   decoration: InputDecoration(
                      //     labelText: 'Mobile No #',
                      //     labelStyle: ktextsize20,
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //   ),
                      // ),
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

  TextFormField buildNameField() {
    return TextFormField(
      controller: namecontroller,
      textInputAction: TextInputAction.next,
      onSaved: (newValue) {
        name = newValue;
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: 'Name',
        prefixIcon: const Icon(Icons.person),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black)),
      ),
    );
  }

  TextFormField buildPhoneField() {
    return TextFormField(
      controller: phonecontroller,
      textInputAction: TextInputAction.next,
      onSaved: (newValue) {
        phone = newValue;
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'Mobile No#',
        prefixIcon: const Icon(Icons.phone),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black)),
      ),
    );
  }
}
