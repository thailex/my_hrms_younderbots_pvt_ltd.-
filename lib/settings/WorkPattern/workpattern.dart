import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/settings/WorkPattern/addworkpattern.dart';

import '../../color.dart';

class WorkPattern extends StatefulWidget {
  const WorkPattern({super.key});

  @override
  State<WorkPattern> createState() => _WorkPatternState();
}

class _WorkPatternState extends State<WorkPattern> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Work Pattern',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
          ),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddWorkPattern(),
                ));
          },
          backgroundColor: appColor2,
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 35,
          ),
        ),
        // to add new workPattern
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Empty',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "you haven't added a work",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              )),
            ),
            Text(
              "pattern yet",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddWorkPattern(),
                    ));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 100, right: 100),
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [
                    appColor,
                    appColor2,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Add New',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
