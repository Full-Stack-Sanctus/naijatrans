
import 'package:flutter/material.dart';
import 'package:naijatrans/authserVice/authservice.dart'; // Import your AuthService
import 'package:naijatrans/pages/login.dart';
import 'package:naijatrans/pages/home.dart';

class AuthHandler extends StatelessWidget {
  final AuthService authService;

  AuthHandler({Key? key, required this.authService}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: authService.check_authentication(), // Use Django AuthService
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator()); // Loading indicator
        }
        if (snapshot.hasData && snapshot.data == true) {
          return HomePage(); // User is authenticated
        } else {
          return LoginPage(); // Not authenticated, show login page
        }
      },
    );
  }
}
