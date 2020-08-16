import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/string_constants.dart';
import 'package:flutter_login_signup/views/sign_up/sign_up_screen.dart';

import '../utils/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          StringConstants.dontHaveAccount,
          style: TextStyle(fontSize: getProportionateScreenWidth(16), color: Colors.white),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text(
            StringConstants.signUp,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: Colors.blue[900],
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
