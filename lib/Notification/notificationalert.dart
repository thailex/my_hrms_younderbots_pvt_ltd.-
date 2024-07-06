import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';
import 'package:hrms/settings/settings.dart';

import '../attendance/attendance.dart';
import '../attendance/leave.dart';

class NotificationAlert extends StatefulWidget {
  const NotificationAlert({super.key});

  @override
  State<NotificationAlert> createState() => _NotificationAlertState();
}

class _NotificationAlertState extends State<NotificationAlert> {
  bool isPressed = true;
  bool isPressed1 = false;
  bool isPressed2 = false;
  // to show today notification
  List<Notification> today = [
    Notification(
      title: 'Account Security Alert',
      subtitle: 'We have noticed some unusual activity on your account.',
      time: '09:00 am',
      icon: Icons.security,
    ),
    Notification(
      title: 'System Update Available',
      subtitle: 'A New System update is ready for installation.',
      time: '09:46 am',
      icon: Icons.system_security_update_warning_rounded,
    )
  ];
  // to show yesterday notification
  List<Notification> yesterday = [
    Notification(
      title: 'Password Reset Successful',
      subtitle: 'Your Password has been successfully reset.',
      time: '09:00 am',
      icon: Icons.lock_outline,
    ),
    Notification(
      title: 'Exiting New features',
      subtitle:
          "We've just launched new features that will enhance your user experience.",
      time: '09:46 am',
      icon: Icons.star_border_rounded,
    ),
    Notification(
      title: 'Event Remainder',
      subtitle:
          "We've just launched new features that will enhance your user experience.",
      time: '09:46 am',
      icon: Icons.date_range_outlined,
    ),
    Notification(
      title: 'Account Security Alert',
      subtitle: 'We have noticed some unusual activity on your account.',
      time: '09:00 am',
      icon: Icons.security,
    ),
    Notification(
      title: 'System Update Available',
      subtitle: 'A New System update is ready for installation.',
      time: '09:46 am',
      icon: Icons.system_security_update_warning_rounded,
    )
  ];
  List<Photos> images = [
    Photos(image: 'assets/Ellipse 58.png'),
    Photos(image: 'assets/p2.jpeg'),
    Photos(image: 'assets/Ellipse 63.png'),
  ];
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
        leaveType: 'Sick Leave document.pdf'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Settings(),
                  ));
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
      ),
      // to show notifications
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPressed = !isPressed;
                      isPressed1 = false;
                      isPressed2 = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      gradient: (isPressed)
                          ? const LinearGradient(colors: [appColor, appColor2])
                          : LinearGradient(colors: [
                              Colors.grey.shade200,
                              Colors.grey.shade200
                            ]),
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'General',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: (isPressed) ? Colors.white : Colors.black,
                      )),
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
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      gradient: (isPressed1)
                          ? const LinearGradient(colors: [appColor, appColor2])
                          : LinearGradient(colors: [
                              Colors.grey.shade200,
                              Colors.grey.shade200
                            ]),
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Leave',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: (isPressed1) ? Colors.white : Colors.black,
                      )),
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
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      gradient: (isPressed2)
                          ? const LinearGradient(colors: [appColor, appColor2])
                          : LinearGradient(colors: [
                              Colors.grey.shade200,
                              Colors.grey.shade200
                            ]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Overtime',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: (isPressed2) ? Colors.white : Colors.black,
                      )),
                    ),
                  ),
                ),
              ],
            ),
            if (isPressed == true) general(),
            if (isPressed1 == true) leave(),
            if (isPressed2 == true) overtime()
          ],
        ),
      ),
    ));
  }
  //   // to show general notification
  Widget general() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 4.7,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: today.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2))),
                      child: Icon(today[index].icon)),
                  title: Text(
                    today[index].title,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        today[index].subtitle,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        )),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        today[index].time,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          color: appColor2,
                        )),
                      ),
                    ],
                  ),
                  isThreeLine: true,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [appColor, appColor2]),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Yesterday',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            )),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: yesterday.length,
            itemBuilder: (context, index) {
              return ListTile(
                isThreeLine: true,
                leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.2))),
                    child: Icon(yesterday[index].icon)),
                title: Text(
                  yesterday[index].title,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      yesterday[index].subtitle,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      )),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      yesterday[index].time,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: appColor2,
                      )),
                    ),
                  ],
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
  // to show leave notification

  Widget leave() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 0.85,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
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
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          leaveData[index].leaveSelect =
                              !leaveData[index].leaveSelect;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            gradient: (leaveData[index].leaveSelect)
                                ? const LinearGradient(
                                    colors: [Colors.white, Colors.white])
                                : const LinearGradient(
                                    colors: [appColor, appColor2]),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: (leaveData[index].leaveSelect)
                                    ? Colors.black.withOpacity(0.2)
                                    : Colors.transparent)),
                        child: Text(
                          (leaveData[index].leaveSelect)
                              ? 'Approved'
                              : 'Approve',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: (leaveData[index].leaveSelect)
                                ? Colors.black
                                : Colors.white,
                          )),
                        ),
                      ),
                    )),
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
                  padding:
                      const EdgeInsets.only(bottom: 5.0, left: 15, right: 15),
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
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 15, right: 15),
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
                  margin: const EdgeInsets.only(top: 5.0, left: 15, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black.withOpacity(0.2))),
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
      ),
    );
  }
  // to show overtime notification

  Widget overtime() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 0.85,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
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
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          overTimeData[index].leaveSelect =
                              !overTimeData[index].leaveSelect;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            gradient: (overTimeData[index].leaveSelect)
                                ? const LinearGradient(
                                    colors: [Colors.white, Colors.white])
                                : const LinearGradient(
                                    colors: [appColor, appColor2]),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: (overTimeData[index].leaveSelect)
                                    ? Colors.black.withOpacity(0.2)
                                    : Colors.transparent)),
                        child: Text(
                          (overTimeData[index].leaveSelect)
                              ? 'Approved'
                              : 'Approve',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: (overTimeData[index].leaveSelect)
                                ? Colors.black
                                : Colors.white,
                          )),
                        ),
                      ),
                    )),
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
                  padding:
                      const EdgeInsets.only(bottom: 5.0, left: 15, right: 15),
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
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 15, right: 15),
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
                  margin: const EdgeInsets.only(top: 5.0, left: 15, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black.withOpacity(0.2))),
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
      ),
    );
  }
}
// to show data for  notification

class Notification {
  String title;
  String subtitle;
  String time;
  IconData icon;
  Notification(
      {required this.title,
      required this.subtitle,
      required this.time,
      required this.icon});
}
