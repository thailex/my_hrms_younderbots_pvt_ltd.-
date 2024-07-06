import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  // to show the list of notification settings
  List<Notification> notification = [
    Notification(
      title: 'Project Updates',
    ),
    Notification(
      title: 'Company Announcements',
    ),
    Notification(
      title: 'Calender Events',
    ),
    Notification(
      title: 'Overtime Requests',
    ),
    Notification(
      title: 'Leave Requests',
    ),
    Notification(
      title: 'Security Alerts',
    ),
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
      ),
          // to show the notification settings
          body: ListView.builder(
        itemCount: notification.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(
                notification[index].title,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
              ),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    notification[index].select = !notification[index].select;
                  });
                },
                icon: (notification[index].select)
                    ? const Icon(
                        Icons.toggle_on,
                        color: appColor2,
                        size: 50,
                      )
                    : const Icon(
                        Icons.toggle_off,
                        color: Colors.grey,
                        size: 50,
                      ),
              ));
        },
      ),
    ));
  }
}
// to show the data of notification settings
class Notification {
  String title;
  bool select = false;
  Notification({required this.title});
}
