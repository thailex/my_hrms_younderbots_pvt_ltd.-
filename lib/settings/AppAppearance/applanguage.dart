import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';

import '../../attendance/attendance.dart';
import '../../g.dart';
import '../LinkedAccounts/linkedaccounts.dart';

class AppLanguage extends StatefulWidget {
  const AppLanguage({super.key});

  @override
  State<AppLanguage> createState() => _AppLanguageState();
}

class _AppLanguageState extends State<AppLanguage> {
  bool isPressed = false;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool isPressed5 = false;
  bool isPressed6 = false;
  bool isPressed7 = false;
  bool isPressed8 = false;

  List<Photos> images = [
    Photos(image: 'assets/US.png'),
    Photos(image: 'assets/GB.png'),
    Photos(image: 'assets/IN.png'),
    Photos(image: 'assets/twitter.png'),
  ];
  // to show list of appLanguage
  List<LinkedAccount> appLanguage = [
    LinkedAccount(
      title: 'English (US)',
    ),
    LinkedAccount(
      title: 'English (UK)',
    ),
    LinkedAccount(
      title: 'Hindi',
    ),
    LinkedAccount(
      title: 'Twitter',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'App Language',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
          // to show list of appLanguage
          body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressed = !isPressed;
                  isPressed1 = false;
                  isPressed2 = false;
                  isPressed3 = false;
                  isPressed4 = false;
                  isPressed5 = false;
                  isPressed6 = false;
                  isPressed7 = false;
                  isPressed8 = false;
                });
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(
                          width: (isPressed) ? 2 : 1,
                          color: (isPressed)
                              ? appColor2
                              : Colors.black.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/US.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'English (US)',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                      trailing: (isPressed)
                          ? const CustomGradient(child: Icon(Icons.check))
                          : const Icon(
                              Icons.check,
                              color: Colors.transparent,
                            ))),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressed1 = !isPressed1;
                  isPressed = false;
                  isPressed2 = false;
                  isPressed3 = false;
                  isPressed4 = false;
                  isPressed5 = false;
                  isPressed6 = false;
                  isPressed7 = false;
                  isPressed8 = false;
                });
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(
                          width: (isPressed1) ? 2 : 1,
                          color: (isPressed1)
                              ? appColor2
                              : Colors.black.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/GB.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'English (UK)',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                      trailing: (isPressed1)
                          ? const CustomGradient(child: Icon(Icons.check))
                          : const Icon(
                              Icons.check,
                              color: Colors.transparent,
                            ))),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressed2 = !isPressed2;
                  isPressed1 = false;
                  isPressed = false;
                  isPressed3 = false;
                  isPressed4 = false;
                  isPressed5 = false;
                  isPressed6 = false;
                  isPressed7 = false;
                  isPressed8 = false;
                });
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(
                          width: (isPressed2) ? 2 : 1,
                          color: (isPressed2)
                              ? appColor2
                              : Colors.black.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/IN.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Hindi',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                      trailing: (isPressed2)
                          ? const CustomGradient(child: Icon(Icons.check))
                          : const Icon(
                              Icons.check,
                              color: Colors.transparent,
                            ))),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressed3 = !isPressed3;
                  isPressed1 = false;
                  isPressed2 = false;
                  isPressed = false;
                  isPressed4 = false;
                  isPressed5 = false;
                  isPressed6 = false;
                  isPressed7 = false;
                  isPressed8 = false;
                });
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(
                          width: (isPressed3) ? 2 : 1,
                          color: (isPressed3)
                              ? appColor2
                              : Colors.black.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/PM.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'French',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                      trailing: (isPressed3)
                          ? const CustomGradient(child: Icon(Icons.check))
                          : const Icon(
                              Icons.check,
                              color: Colors.transparent,
                            ))),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressed4 = !isPressed4;
                  isPressed1 = false;
                  isPressed2 = false;
                  isPressed3 = false;
                  isPressed = false;
                  isPressed5 = false;
                  isPressed6 = false;
                  isPressed7 = false;
                  isPressed8 = false;
                });
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(
                          width: (isPressed4) ? 2 : 1,
                          color: (isPressed4)
                              ? appColor2
                              : Colors.black.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/AE.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Arab',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                      trailing: (isPressed4)
                          ? const CustomGradient(child: Icon(Icons.check))
                          : const Icon(
                              Icons.check,
                              color: Colors.transparent,
                            ))),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressed5 = !isPressed5;
                  isPressed1 = false;
                  isPressed2 = false;
                  isPressed3 = false;
                  isPressed4 = false;
                  isPressed = false;
                  isPressed6 = false;
                  isPressed7 = false;
                  isPressed8 = false;
                });
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(
                          width: (isPressed5) ? 2 : 1,
                          color: (isPressed5)
                              ? appColor2
                              : Colors.black.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/RU.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Russian',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                      trailing: (isPressed5)
                          ? const CustomGradient(child: Icon(Icons.check))
                          : const Icon(
                              Icons.check,
                              color: Colors.transparent,
                            ))),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressed6 = !isPressed6;
                  isPressed1 = false;
                  isPressed2 = false;
                  isPressed3 = false;
                  isPressed4 = false;
                  isPressed5 = false;
                  isPressed = false;
                  isPressed7 = false;
                  isPressed8 = false;
                });
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(
                          width: (isPressed6) ? 2 : 1,
                          color: (isPressed6)
                              ? appColor2
                              : Colors.black.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/JP.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Japanese',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                      trailing: (isPressed6)
                          ? const CustomGradient(child: Icon(Icons.check))
                          : const Icon(
                              Icons.check,
                              color: Colors.transparent,
                            ))),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPressed7 = !isPressed7;
                  isPressed1 = false;
                  isPressed2 = false;
                  isPressed3 = false;
                  isPressed4 = false;
                  isPressed5 = false;
                  isPressed6 = false;
                  isPressed = false;
                  isPressed8 = false;
                });
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(
                          width: (isPressed7) ? 2 : 1,
                          color: (isPressed7)
                              ? appColor2
                              : Colors.black.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/CN.png',
                        height: 30,
                        width: 30,
                      ),
                      title: Text(
                        'Chinese',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                      trailing: (isPressed7)
                          ? const CustomGradient(child: Icon(Icons.check))
                          : const Icon(
                              Icons.check,
                              color: Colors.transparent,
                            ))),
            ),
          ],
        ),
      ),
    ));
  }
}
