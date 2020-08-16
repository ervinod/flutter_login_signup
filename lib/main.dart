import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/string_constants.dart';
import 'routes.dart';
import 'utils/theme.dart';
import 'views/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: StringConstants.recentTaskHeading,
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
