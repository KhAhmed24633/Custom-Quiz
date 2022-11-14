import 'package:flutter/cupertino.dart';

//

//

//

//Colors Constants
const coloricon = Color.fromARGB(255, 65, 63, 63);

//

//

//

// SizedBox Constant

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

//

//

//

// Font Size Constant
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

//

//

//

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

final RegExp passwordvalidatorRegExp =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

final RegExp shortpasswordvalidatorRegExp = RegExp(r'^.{8,}$(?=.*?[+])');

final RegExp phonevalidatorRegExp =
    RegExp(r'^((\+[0-9]{2})?(0)?)([2-9]{3})((-)?(\s)?)([2-9]{7})$');

const String kEmailNullError = "Please Enter your email";

const String kInvalidEmailError = "Please Enter Valid Email";

// const String kMatchEmailError = "Email don't match";

const String kPasswordNullError = "Please Enter your password";

const String kShortPasswordError = "Password is too short";

const String kPasswordError =
    '''Password must be at least 8 Characters long with 1 Uppercase, 1 Lowercase,1 Numeric and 1 Special Character ''';

// const String kMatchPassError = "Passwords don't match";

const String kMobileNullError = 'Enter your Mobile Number';

const String kMobileInvalidError = 'Mobile Number is Invalid';
