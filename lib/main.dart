import 'package:flutter/material.dart';
import 'package:greenify/screens/Welcome/welcome.dart';
import 'package:greenify/Screens/Login/login.dart';
import 'package:greenify/Screens/Signup/signup.dart';
import 'package:greenify/constants.dart';
import 'package:greenify/screens/loading.dart';
import 'package:greenify/Screens/home/home.dart';
import 'package:greenify/screens/map/map.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/welcome': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
        '/map': (context) => MapScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
