import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/size_config.dart';
import 'package:flutter_login_signup/views/onboarding_screen/components/body.dart';


class OnboardingScreen extends StatelessWidget {
  static String routeName = "/onboarding";
  @override
  Widget build(BuildContext context) {
    // You have to call it to initialize MediaQuery
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
