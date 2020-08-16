import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/size_config.dart';
import 'package:flutter_login_signup/utils/string_constants.dart';
import 'package:flutter_login_signup/views/sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2), (){
      //Navigator.pushNamed(context, SignInScreen.routeName);
      Navigator.popAndPushNamed(context, SignInScreen.routeName);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: FlutterLogo()),
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(StringConstants.splashTagline, style: TextStyle(fontSize:20, ),)
          ],
        ),

      ),
    );
  }

}
