import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/string_constants.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(StringConstants.signIn),
      ),
      body: Body(),
    );
  }
}
