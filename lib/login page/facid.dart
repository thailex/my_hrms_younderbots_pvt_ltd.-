import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FaceID extends StatefulWidget {
  const FaceID({super.key});

  @override
  State<FaceID> createState() => _FaceIDState();
}

class _FaceIDState extends State<FaceID> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => showDialogBox());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Face Id',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          )),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      // to authenticate face id
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/faceimage.JPG',
              scale: 0.2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset(
                'assets/facedetect.png',
                scale: 3,
              ),
            ),
          ],
        ),
      ),
    ));
  }
  // to showDialogBox for face id
  showDialogBox() {
    return showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Colors.transparent,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/tickgif.gif'),
                      Text(
                        'Logged Successfully',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            )
            // Container(
            //   decoration: const BoxDecoration(color: Colors.transparent),
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Container(
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(15),
            //         ),
            //         child: Stack(
            //           alignment: Alignment.topRight,
            //           children: [
            //             Image.asset(
            //               'assets/tickgif.gif',
            //               scale: 3,
            //             ),
            //             Text(
            //               'Logged Successfully',
            //               style: GoogleFonts.poppins(
            //                   textStyle: const TextStyle(
            //                 fontSize: 25,
            //                 fontWeight: FontWeight.w700,
            //                 color: Colors.black,
            //               )),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            );
      },
    );
  }
}
