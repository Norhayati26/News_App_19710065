import 'package:flutter/material.dart';
import 'package:news_app_19710065/main.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() { 
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 20);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff622f74),
              gradient: LinearGradient(
                colors: [new Color(0xffc471ed), new Color(0xff12c2e9)],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 85.0,
                child: Image.asset(
                  "images/aya.jpg",
                  width: 250.0,
                  height: 125.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
              ),
              Text(
                "NORHAYATI",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 3.0,
                  fontFamily: 'Golden Plains',
                  fontSize: 24.0,
                ),
              ),
              Text(
                "19710065",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontFamily: 'Golden Plains',
                  fontSize: 24.0,
                ),
              ),
              Text(
                "5A SI Pagi Banjarmasin",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontFamily: 'Golden Plains',
                  fontSize: 24.0,
                ),
              ),
              Text(
                "Hulu Sungai Selatan",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontFamily: 'Golden Plains',
                  fontSize: 24.0,
                ),
              ),
              Text(
                "Daha Selatan 26 Maret 2001",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontFamily: 'Golden Plains',
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}