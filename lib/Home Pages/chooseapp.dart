import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/g.dart';

class Choosing extends StatefulWidget {
  const Choosing({super.key});

  @override
  State<Choosing> createState() => _ChoosingState();
}

class _ChoosingState extends State<Choosing> {
  List<GridList> gridContent = [
    GridList(
        title: 'Marketing', icons: Icons.business_center, subTitle: 'Products'),
    GridList(title: 'Project', icons: Icons.poll_rounded, subTitle: 'Products'),
    GridList(title: 'HRMS', icons: Icons.business_center, subTitle: 'Manage'),
    GridList(
        title: 'Marketing', icons: Icons.business_center, subTitle: 'Products'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomGradient(
              child: Text(
                'Choose your topic',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  grid() {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 50, top: 50),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Icon(
            Icons.business_center_rounded,
            color: Colors.black,
            size: 45,
          ),
          Text(
            'Marketing',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            )),
          ),
          Text(
            'Products',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            )),
          ),
        ],
      ),
    );
  }
}

class GridList {
  IconData? icons;
  String? title;
  String? subTitle;
  GridList({required this.title, required this.icons, required this.subTitle});
}

class Colorss {
  Color? color;

  Colorss({required this.color});
}

class Colorsss {
  Color? color;
  Color? color1;

  Colorsss({required this.color, required this.color1});
}
