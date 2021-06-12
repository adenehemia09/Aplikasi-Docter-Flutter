import 'dart:async';
import 'package:doctor_apps/Screen/LandingPage.dart';
import 'package:doctor_apps/Screen/Percobaan/Button%20Navigasion%20Bar.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(
          MaterialPageRoute(builder: (_) => LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xFFA31B5F),
      //Colors.green[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'DIDOKTERIN',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Mitra Resmi Dari', style: TextStyle(color: Colors.white, fontSize: 13),),
                SizedBox(width: 5,),
                Image.asset('images/Logo Kementrian Kesehatan.png', height: 35, width: 80,),
              ],
            ),
            // logo here
            /*Image.asset(
              'assets/images/logo.png',
              height: 120,
            ),*/
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}


