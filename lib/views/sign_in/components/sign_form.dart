import 'package:flutter/material.dart';
import 'package:flutter_login_signup/components/default_button.dart';
import 'package:flutter_login_signup/components/form_error.dart';
import 'package:flutter_login_signup/utils/constants.dart';
import 'package:flutter_login_signup/utils/size_config.dart';
import 'package:flutter_login_signup/utils/string_constants.dart';
import 'package:flutter_login_signup/views/forgot_password/forgot_password_screen.dart';
import 'package:flutter_login_signup/views/home_screen/home_screen.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  bool _obscurePassword = true;
  var _emailFocus = FocusNode();
  var _passwordFocus = FocusNode();
  final List<String> errors = [];

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: mPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                Text(StringConstants.rememberMe),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: Text(
                    StringConstants.forgotPassword,
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
              text: StringConstants.continuee,
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  // if all inputs are valid then go to home screen
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      focusNode: _emailFocus,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onFieldSubmitted: (value){
        _emailFocus.unfocus();
        FocusScope.of(context).requestFocus(_passwordFocus);
      },
      onChanged: (value) {

        if (value.isNotEmpty) {
          removeError(error: emailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: invalidEmailError);
        }
        return null;
      },
      validator: (value) {

        if (value.isEmpty) {
          addError(error: emailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: invalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: StringConstants.email,
        hintText: StringConstants.enterEmail,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 10.0),
          child: Icon(Icons.mail_outline),
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      focusNode: _passwordFocus,
      obscureText: _obscurePassword,
      onSaved: (newValue) => password = newValue,
      onFieldSubmitted: (value){
        _emailFocus.unfocus();
        _passwordFocus.unfocus();
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: passwordNullError);
        } else if (value.length >= 8) {
          removeError(error: shortPasswordError);
        }
        return null;
      },
      validator: (value) {

        if (value.isEmpty) {
          addError(error: passwordNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: shortPasswordError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: StringConstants.password,
        hintText: StringConstants.enterPassword,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 10.0),
          child: Icon(Icons.lock_open),
        ),
        suffixIcon: IconButton(
          onPressed: () => _togglePasswordVisibility(),
          icon: Icon(
            Icons.remove_red_eye,
            color: this._obscurePassword ? mPrimaryColor : Colors.grey,
          ),
        ),
      ),
    );
  }
}
