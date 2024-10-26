import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Naijatrans Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Greeting Text
            Text(
              'Welcome to Naijatrans!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Button to Navigate to Profile/Settings
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('Profile & Settings'),
            ),

            SizedBox(height: 10),

            // Button to Navigate to Bookings History
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bookings');
              },
              child: Text('View Bookings History'),
            ),

            SizedBox(height: 10),

            // Button to Navigate to Vehicle Tracking
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tracking');
              },
              child: Text('Track Vehicle'),
            ),

            Spacer(),

            // Additional features
            Text(
              'More Features Coming Soon!',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
