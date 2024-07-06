import 'package:flutter/material.dart';
import 'package:hrms/splashscreen/splashscreen.dart';

void main() {
  runApp(const Hrms());
}

class Hrms extends StatefulWidget {
  const Hrms({super.key});

  @override
  State<Hrms> createState() => _HrmsState();
}

class _HrmsState extends State<Hrms> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
