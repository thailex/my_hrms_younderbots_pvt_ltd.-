import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/profile%20Screens/privacy.dart';
import 'package:hrms/profile%20Screens/termsandconditions.dart';
import 'package:hrms/settings/Help&Support/contactsupport.dart';
import 'package:hrms/settings/Help&Support/faq.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  // to show the list of help
  List<Help> help = [
    Help(title: 'FAQ'),
    Help(title: 'Contact Support'),
    Help(title: 'Privacy Policy'),
    Help(title: 'Terms of Service'),
    Help(title: 'About Us'),
    Help(title: 'Rate Us'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Help & Support',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
          // to show the help
          body: ListView.builder(
        itemCount: help.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              (index == 0)
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Faq(),
                      ))
                  : (index == 1)
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ContactSupport(),
                          ))
                      : (index == 2)
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Privacy(),
                              ))
                          : (index == 3)
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const TermsConditions(),
                                  ))
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Faq(),
                                  ));
            },
            child: ListTile(
              title: Text(
                help[index].title,
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
              ),
            ),
          );
        },
      ),
    ));
  }
}
// to show the list of help
class Help {
  String title;
  bool select = false;
  Help({required this.title});
}
