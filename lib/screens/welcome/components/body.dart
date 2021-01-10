import 'package:flutter/material.dart';
import 'package:greenify/Screens/Welcome/components/background.dart';
import 'package:greenify/Screens/Welcome/components/header.dart';
import 'package:greenify/components/rounded_button.dart';
import 'package:greenify/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //HeaderWithSearchBox(size: size),
            Text(
              "Greenify",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                  color: kPrimaryColor),
            ),
            SizedBox(height: size.height * 0.08),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
          ],
        ),
      ),
    );
  }
}
