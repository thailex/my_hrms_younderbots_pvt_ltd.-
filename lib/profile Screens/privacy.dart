import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/g.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
      // to show the policy and privacy of the application
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Text(
                'last update ,5/2/2024',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                'Please read the terms of service,carefully before using our app operated by us ',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CustomGradient(
                child: Text(
                  'Privacy Policy',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  )),
                ),
              ),
            ),
            Text(
              'Please read these terms and conditions of use carefully before accessing, using or obtaining any materials, information, products or services. By accessing the HRMS, mobile or tablet application, or any other feature or other HRMSplatform (collectively "Our Website") you agree to be bound by these terms and conditions ("Terms") and our Privacy Policy.',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
            ),
          ],
        ),
      ),
    ));
  }
}
