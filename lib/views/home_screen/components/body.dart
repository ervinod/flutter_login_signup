import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/constants.dart';
import 'package:flutter_login_signup/utils/size_config.dart';
import 'package:flutter_login_signup/utils/string_constants.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          color: mPrimaryColor,
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          StringConstants.welcomeToFlutter,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
        ),
        Spacer(),
      ],
    );
  }
}
