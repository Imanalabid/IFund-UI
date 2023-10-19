
import 'package:flutter/material.dart';
import 'package:iFund/auth/sign_in.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add any initialization or data loading logic here
    // You can use a timer to simulate a delay or fetch data from an API
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/signin'); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/img/splash.png', // Replace with your image path
         // Adjust the height as needed
        ),
      ),
    );
  }
}