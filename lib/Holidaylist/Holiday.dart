import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';

class Holiday extends StatefulWidget {
  const Holiday({super.key});

  @override
  State<Holiday> createState() => _HolidayState();
}

class _HolidayState extends State<Holiday> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey[200],
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  )),
              title: Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Text(
                  'Holidays',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
                ),
              ),
            ),
            backgroundColor: Colors.grey[200],
            body: SingleChildScrollView(
              child: holidayList(),
            )));
  }
  // to show list of holidays
  holiday(
    date,
    day,
    festivel,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 15,
              height: MediaQuery.of(context).size.height / 8,
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  gradient: LinearGradient(colors: [
                    appColor,
                    appColor2,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.date_range_rounded,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: 100,
                      child: Text(
                        date,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 80,
                          child: Text(
                            day,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    width: 450,
                    child: Text(
                      festivel,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  // to show list of holidays
  holidayList() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return holiday(
            (index == 0)
                ? 'Jan 26,2024'
                : (index == 1)
                    ? 'Aug 15,2024'
                    : (index == 2)
                        ? 'Apr 17,2024'
                        : (index == 3)
                            ? 'Apr 18,2024'
                            : (index == 4)
                                ? 'Jan 14,2024'
                                : 'Apr 20,2024',
            (index == 0)
                ? 'wednesday'
                : (index == 1)
                    ? 'Thursday'
                    : (index == 2)
                        ? 'Friday'
                        : (index == 3)
                            ? 'Saturday'
                            : (index == 4)
                                ? 'Tuesday'
                                : 'Monday',
            (index == 0)
                ? 'Republic Day'
                : (index == 1)
                    ? 'Independence Day'
                    : (index == 2)
                        ? 'Holi'
                        : (index == 3)
                            ? 'Diwali'
                            : (index == 4)
                                ? 'Pongal'
                                : 'Diwali',
          );
        },
      ),
    );
  }
}
