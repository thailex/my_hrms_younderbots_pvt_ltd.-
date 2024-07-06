import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';
import 'package:hrms/g.dart';

class FindLocation extends StatefulWidget {
  const FindLocation({super.key});

  @override
  State<FindLocation> createState() => _FindLocationState();
}

class _FindLocationState extends State<FindLocation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: CustomGradient(
          child: Text(
            'Find Location',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            )),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      // to show the find location design
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/map2.png',
            ),
          ),
          AvatarGlow(
            glowShape: BoxShape.circle,
            glowColor: appColor,
            glowRadiusFactor: 5,
            child: Image.asset(
              'assets/mapdot.png',
              scale: 60,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 120.0),
            child: CircleAvatar(
              maxRadius: 20,
              backgroundImage: AssetImage('assets/teamleave.jpeg'),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[100],
    ));
  }
}
