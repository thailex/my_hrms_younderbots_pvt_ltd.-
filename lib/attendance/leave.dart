import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';

import 'attendance.dart';

class Leave extends StatefulWidget {
  const Leave({super.key});

  @override
  State<Leave> createState() => _LeaveState();
}

class _LeaveState extends State<Leave> {
  // to show images of a employee for Leave

  List<Photos> images = [
    Photos(image: 'assets/Ellipse 55.png'),
    Photos(image: 'assets/p2.jpeg'),
    Photos(image: 'assets/Ellipse 58.png'),
  ];
  // to show data of a employee for Leave

  List<Leaves> leaveData = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Accountant',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Flutter Developer',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Manikandan',
        role: 'Flutter Developer',
        notes:
            "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
        leaveType: 'Sick Leave document.pdf'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Leave(3)',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
              ),
              centerTitle: true,
            ),
            // to show data of a employee for Leave
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
                          leaveData[index].name!,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          )),
                        ),
                        subtitle: Text(
                          leaveData[index].role!,
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
                          leaveData[index].notes!,
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
                            leaveData[index].leaveType!,
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
// to show data of a employee for Leave
class Leaves {
  String? name;
  String? role;
  String? notes;
  String? leaveType;
  String? time;
  bool leaveSelect = false;
  Leaves(
      {required this.name,
      required this.role,
      required this.notes,
      required this.leaveType,
      this.time});
}
