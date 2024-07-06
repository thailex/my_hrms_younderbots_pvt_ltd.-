import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../attendance/attendance.dart';

class ContactSupport extends StatefulWidget {
  const ContactSupport({super.key});

  @override
  State<ContactSupport> createState() => _ContactSupportState();
}

class _ContactSupportState extends State<ContactSupport> {
  List<Photos> images = [
    Photos(image: 'assets/viber.png'),
    Photos(image: 'assets/chrome.png'),
    Photos(image: 'assets/whatsapp.png'),
    Photos(image: 'assets/Facebook.png'),
    Photos(image: 'assets/twitter.png'),
    Photos(image: 'assets/instagram.png'),
  ];
  // to show the list of contactSupport
  List<LinkedAccount> contactSupport = [
    LinkedAccount(
      title: 'Customer Support',
    ),
    LinkedAccount(
      title: 'Website',
    ),
    LinkedAccount(
      title: 'Whatsapp',
    ),
    LinkedAccount(
      title: 'Facebook',
    ),
    LinkedAccount(
      title: 'Twitter',
    ),
    LinkedAccount(
      title: 'Instagram',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Contact & Support',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
              ),
              centerTitle: true,
            ),
            // to show the contactSupport
            body: ListView.builder(
              itemCount: contactSupport.length,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            images[index].image!,
                            height: 25,
                            width: 25,
                          ),
                        ),
                        title: Text(
                          contactSupport[index].title,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black,
                        )));
              },
            )));
  }
}
// to show the data for LinkedAccount
class LinkedAccount {
  String title;
  bool select = false;
  LinkedAccount({required this.title});
}
