/* 
  In loading.dart we will display our logo and while it happens we 
  will we check in the background if user is logged in. If yes, then we will 
  change the screen to user profile and we will gather all the relevant data as well, 
  else, we will show signup/login  page. 
*/

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:greenify/constants.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  /* 
    We will remove future.delayed once we authenticate user here  
 */
  void authenticateUser() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //authenticateUser();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green[50],
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Greenify",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                  color: kPrimaryColor),
            ),
            SizedBox(height: size.height * 0.2),
            SpinKitRotatingCircle(
              color: kPrimaryLightColor,
              size: 50.0,
            )
          ],
        )));
  }
}
