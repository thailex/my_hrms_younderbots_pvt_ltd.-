import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              )),
        ),
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
      // to show notification
      body: notification(),
    ));
  }
  // to show notification

  notification() {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 40,
            child: Icon(
              Icons.person,
              color: Colors.black.withOpacity(0.6),
              size: 30,
            ),
          ),
          title: Text(
            'You updated your profile',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
          ),
          isThreeLine: true,
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You just updated your profile',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                )),
              ),
              Text(
                'Just Now',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ],
          ),
        );
      },
    );
  }
}
