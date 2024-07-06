import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/g.dart';
import 'package:hrms/settings/AppAppearance/applanguage.dart';

import '../../color.dart';

class AppAppearance extends StatefulWidget {
  const AppAppearance({super.key});

  @override
  State<AppAppearance> createState() => _AppAppearanceState();
}

class _AppAppearanceState extends State<AppAppearance> {
  bool isPressed = false;
  bool isPressed1 = false;
  bool isPressed2 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'App Appearance',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
      // to choose theme
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                bottomSheet();
              },
              title: Text(
                'Theme',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomGradient(
                    child: Text(
                      'Light',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                    size: 20,
                  )
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppLanguage(),
                    ));
              },
              title: Text(
                'App Language',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomGradient(
                    child: Text(
                      'English (US)',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                    size: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
  // to show bottomSheet for choose theme
  bottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Choose Theme',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
                ),
              ),
              const SizedBox(
                width: 350,
                child: Divider(
                  height: 30,
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressed = !isPressed;
                        isPressed1 = false;
                        isPressed2 = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 15, bottom: 15, top: 15),
                      child: Row(
                        children: [
                          CustomGradient(
                              child: (isPressed)
                                  ? const Icon(
                                      Icons.check_circle,
                                    )
                                  : const Icon(
                                      Icons.circle_outlined,
                                    )),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'System Default',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressed1 = !isPressed1;
                        isPressed = false;
                        isPressed2 = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 15, bottom: 15, top: 15),
                      child: Row(
                        children: [
                          CustomGradient(
                              child: (isPressed1)
                                  ? const Icon(
                                      Icons.check_circle,
                                    )
                                  : const Icon(
                                      Icons.circle_outlined,
                                    )),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Light',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressed2 = !isPressed2;
                        isPressed = false;
                        isPressed1 = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 15, bottom: 15, top: 15),
                      child: Row(
                        children: [
                          CustomGradient(
                              child: (isPressed2)
                                  ? const Icon(
                                      Icons.check_circle,
                                    )
                                  : const Icon(
                                      Icons.circle_outlined,
                                    )),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Dark',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                  width: 350,
                  child: Divider(
                    height: 20,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.cyan.shade50),
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: appColor2,
                        )),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient:
                          const LinearGradient(colors: [appColor, appColor2]),
                    ),
                    child: Text(
                      'Save',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                    ),
                  )
                ],
              )
            ],
          ));
        });
      },
    );
  }
}
