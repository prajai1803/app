import 'dart:async';

import 'package:app/screens/loginscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset(0, 2),
            end: FractionalOffset(0, 0),
            tileMode: TileMode.clamp,
            colors: <Color>[
              Color.fromARGB(255, 160, 18, 18),
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: Image.asset("assets/images/Logo.png"));
  }
}
