import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';

class AttendanceDetails extends StatefulWidget {
  const AttendanceDetails({super.key});

  @override
  State<AttendanceDetails> createState() => _AttendanceDetailsState();
}

class _AttendanceDetailsState extends State<AttendanceDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
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
          title: Text(
            'Jane Hawkins',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: timeListBuilder(),
        ),
      ),
    );
  }
  // to show the time status of an employee
  timeList(date, checkin, checkout) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 15,
              height: MediaQuery.of(context).size.height / 7.3,
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
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 7.3,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.arrow_circle_right_outlined,
                          color: appColor2,
                          size: 35,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: SizedBox(
                          width: 80,
                          child: Text(
                            checkin,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey,
                            )),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.arrow_circle_left_outlined,
                          color: appColor2,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        child: Text(
                          checkout,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  // to show the time status of an employee
  timeListBuilder() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return timeList(
            (index == 0)
                ? 'Apr 15.2024'
                : (index == 1)
                    ? 'Apr 16.2024'
                    : (index == 2)
                        ? 'Apr 17.2024'
                        : (index == 3)
                            ? 'Apr 18.2024'
                            : (index == 4)
                                ? 'Apr 19.2024'
                                : 'Apr 20.2024',
            (index == 0)
                ? '10:00 am'
                : (index == 1)
                    ? '10:00 am'
                    : (index == 2)
                        ? '10:00 am'
                        : (index == 3)
                            ? '10:00 am'
                            : (index == 4)
                                ? '10:00 am'
                                : '10:00 am',
            (index == 0)
                ? '07:00 pm'
                : (index == 1)
                    ? '07:00 pm'
                    : (index == 2)
                        ? '07:00 pm'
                        : (index == 3)
                            ? '07:00 pm'
                            : (index == 4)
                                ? '07:00 pm'
                                : '07:00 pm',
          );
        },
      ),
    );
  }
}
