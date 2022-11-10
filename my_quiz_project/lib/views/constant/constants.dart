import 'package:flutter/cupertino.dart';

class Sizebox {}

const sizebox5 = SizedBox(
  height: 5,
);
const sizebox10 = SizedBox(
  height: 10,
);
const sizebox20 = SizedBox(
  height: 20,
);
const sizebox30 = SizedBox(
  height: 30,
);
const sizebox40 = SizedBox(
  height: 40,
);

const heading60 = TextStyle(fontSize: 60);
const heading50 = TextStyle(fontSize: 50);
const heading40 = TextStyle(fontSize: 40);
const ktextsize30 = TextStyle(fontSize: 30);
const ktextsize25 = TextStyle(fontSize: 25);
const ktextsize20 = TextStyle(fontSize: 20);
const ktextsize18 = TextStyle(fontSize: 18);
const ktextsize16 = TextStyle(fontSize: 16);
const ktextsize14 = TextStyle(fontSize: 14);
const ktextsize12 = TextStyle(fontSize: 12);

const String knameNullError = "Please Enter your name";

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kEmailNullError = "Please Enter your email";

const String kInvalidEmailError = "Please Enter Valid Email";

const String kPasswordNullError = "Please Enter your password";

const String kShortPassError = "Password is too short";

const String kMatchPassError = "Passwords don't match";
