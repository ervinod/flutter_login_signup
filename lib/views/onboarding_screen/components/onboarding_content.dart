import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/constants.dart';
import 'package:flutter_login_signup/utils/size_config.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "SHOPITO",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: mPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
