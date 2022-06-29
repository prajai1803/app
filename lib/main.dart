import 'package:app/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StaffRating());
}

class StaffRating extends StatelessWidget {
  const StaffRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "StaffRating",
      home: SplashScreen(),
    );
  }
}
