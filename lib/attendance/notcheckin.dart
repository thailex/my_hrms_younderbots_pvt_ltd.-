import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'attendance.dart';
import 'leave.dart';

class NotCheckIn extends StatefulWidget {
  const NotCheckIn({super.key});

  @override
  State<NotCheckIn> createState() => _NotCheckInState();
}

class _NotCheckInState extends State<NotCheckIn> {
  // to show data of a employee for not Check In

  List<Leaves> notCheckInData = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Accountant',
        time: '00:41:52',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Flutter Developer',
        time: '00:41:39',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show images of a employee for not Check In

  List<Photos> images = [
    Photos(image: 'assets/Ellipse 55.png'),
    Photos(image: 'assets/p2.jpeg'),
    Photos(image: 'assets/Ellipse 57.png'),
    Photos(image: 'assets/Ellipse 58.png'),
    Photos(image: 'assets/Ellipse 63.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Not Check In Yet(5)',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
          // to show data of a employee for not Check In
          body: ListView.builder(
        itemCount: notCheckInData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              notCheckInData[index].name!,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              )),
            ),
            subtitle: Text(
              notCheckInData[index].role!,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              )),
            ),
            trailing: const Row(mainAxisSize: MainAxisSize.min, children: [
              Icon(
                Icons.chat_outlined,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.wifi_calling_3_outlined)
            ]),
          );
        },
      ),
    ));
  }
}
