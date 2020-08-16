import 'package:flutter/material.dart';

const mPrimaryColor = Color(0xFF448AFF);
const mPrimaryDarkColor = Color(0xFF0288D1);
const mPrimaryLightColor = Color(0xFFFFECDF);
const mPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF29B6F6), Color(0xFF0288D1)],
);
const mSecondaryColor = Color(0xFF979797);
const mTextColor = Color(0xFF757575);

const mAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String nameNullError = "Please Enter your name";
const String emailNullError = "Please Enter your email";
const String invalidEmailError = "Please Enter Valid Email";
const String passwordNullError = "Please Enter your password";
const String shortPasswordError = "Password is too short";


