import 'dart:async';

import 'package:flutter/material.dart';

import 'package:hrms/login%20page/login.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  dynamic token;
  dynamic type;
  dynamic bookChairId;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        // to show animation

        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
            Center(
                child: AnimatedBuilder(
              animation: _controller,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.transparent,
                child: Center(
                  child: Image.asset(
                    "assets/yblogo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.scale(
                  scale: _animation.value,
                  child: Transform.rotate(
                    origin: Offset.zero,
                    angle: _controller.value * 11.6,
                    child: child,
                  ),
                );
              },
            )),
          ],
        ));
  }
  // to show animation

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _animation = Tween<double>(
      begin: 200,
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    );
    _controller.forward();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(
          const Duration(seconds: 1),
          () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              )));
    });
  }
}
