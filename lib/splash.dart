import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import the login screen file

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  // Navigate to the home screen after a delay
  void _navigateToHome() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
          255, 0, 0, 0), // Set the background color of the splash screen
      body: Center(
        child: Image.asset('photos/images.png'),
      ),
    );
  }
}
