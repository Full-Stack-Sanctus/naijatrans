import 'package:flutter/material.dart';
import 'package:naijatrans/pages/login.dart';
import 'package:naijatrans/pages/home.dart';

import 'package:naijatrans/splashScreen/splash.dart';

import 'package:naijatrans/authserVice/authservice.dart'; 
import 'package:naijatrans/authhandLer/authhandler.dart'; 


import 'package:naijatrans/pages/home.dart';


import 'package:naijatrans/pages/Profile.dart';


import 'dart:async';


//import 'package:naijatrans/boarding/bordingScreen.dart'; 

import 'package:shared_preferences/shared_preferences.dart';





void main() {
  final authService = AuthService('https://empire-djangob.onrender.com'); // Replace with your Ngrok URL

  runApp(MyApp(authService: authService));
}

class MyApp extends StatelessWidget {
  final AuthService authService;

  MyApp({required this.authService});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NaijaTrans',
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(authService: authService), 
        '/auth': (context) => AuthHandler(authService: authService),
        
        '/profile': (context) => ProfilePage(),  // Define the profile page route
    
        // Add other routes here if needed
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
