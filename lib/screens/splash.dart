import 'dart:async';
import 'package:flutter/material.dart';
import 'package:guido/const.dart';
import 'package:guido/screens/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Login(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: primaryColor,
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/Logo Guido (1).png',height: 150)),
            ),
          ],
        ),
      )
    );
  }
}
