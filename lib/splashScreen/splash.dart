import 'package:naijatrans/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:naijatrans/authhandLer/authhandler.dart'; 
import 'dart:async';

import 'package:naijatrans/authserVice/authservice.dart'; 

class Splash extends StatefulWidget {
    
  final AuthService authService;  // Add the AuthService as a parameter

 
  Splash({Key? key, required this.authService}) : super(key: key);

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds before navigating to AuthHandler
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
  MaterialPageRoute(builder: (context) => AuthHandler(authService: widget.authService))
);

  });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/loading/loadingPage.png",
              fit: BoxFit.cover,
            ),
          ),
          // Overlay text and spinner
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4, // Adjusts vertical position
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NaijaTrans',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    color: Colors.white, // White text to contrast the image
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 150),
                SpinKitFadingCircle(
                  color: Colors.red,
                  size: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
