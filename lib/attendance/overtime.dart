import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';
import 'attendance.dart';
import 'leave.dart';

class OverTime extends StatefulWidget {
  const OverTime({super.key});

  @override
  State<OverTime> createState() => _OverTimeState();
}

class _OverTimeState extends State<OverTime> {
  // to show images of a employee for Overtime In

  List<Photos> images = [
    Photos(image: 'assets/Ellipse 58.png'),
    Photos(image: 'assets/Ellipse 55.png'),
    Photos(image: 'assets/Ellipse 63.png'),
  ];
  // to show data of a employee for Overtime In

  List<Leaves> overTimeData = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Accountant',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Project Details Document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Flutter Developer',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Client Meeting Agenda Document.pdf'),
    Leaves(
        name: 'Manikandan',
        role: 'Flutter Developer',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Project Details Document.pdf'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Overtime In(3)',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
              ),
              centerTitle: true,
            ),
            // to show data of a employee for Overtime In
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(images[index].image!),
                        ),
                        title: Text(
                          overTimeData[index].name!,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          )),
                        ),
                        subtitle: Text(
                          overTimeData[index].role!,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                        ),
                        trailing: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.chat_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.wifi_calling_3_outlined)
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, left: 15, right: 15, bottom: 5),
                        child: Text(
                          'Notes :',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5.0, left: 15, right: 15),
                        child: Text(
                          overTimeData[index].notes!,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 15, right: 15),
                        child: Text(
                          'Attachment :',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 5.0, left: 15, right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[200],
                            border: Border.all(
                                color: Colors.black.withOpacity(0.2))),
                        child: ListTile(
                          leading: const Icon(
                            Icons.file_present_sharp,
                            color: appColor2,
                          ),
                          title: Text(
                            overTimeData[index].leaveType!,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            )),
                          ),
                          trailing: const Icon(
                            Icons.cloud_download_sharp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Divider(
                        height: 40,
                      ),
                    ],
                  );
                },
              ),
            )));
  }
}
