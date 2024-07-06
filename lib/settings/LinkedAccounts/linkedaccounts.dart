import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/g.dart';

import '../../attendance/attendance.dart';

class LinkedAccounts extends StatefulWidget {
  const LinkedAccounts({super.key});

  @override
  State<LinkedAccounts> createState() => _LinkedAccountsState();
}

class _LinkedAccountsState extends State<LinkedAccounts> {
  List<Photos> images = [
    Photos(image: 'assets/google.png'),
    Photos(image: 'assets/apple.png'),
    Photos(image: 'assets/Facebook.png'),
    Photos(image: 'assets/twitter.png'),
  ];
  // to show the list of linkedAccount
  List<LinkedAccount> linkedAccount = [
    LinkedAccount(
      title: 'Google',
    ),
    LinkedAccount(
      title: 'Apple',
    ),
    LinkedAccount(
      title: 'Facebook',
    ),
    LinkedAccount(
      title: 'Twitter',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Linked Accounts',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
              ),
              centerTitle: true,
            ),
            // to show the linkedAccount
            body: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Image.asset(
                        images[index].image!,
                        height: 30,
                      ),
                      title: Text(
                        linkedAccount[index].title,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                      trailing: CustomGradient(
                        child: Text(
                          'Connect',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                        ),
                      ),
                    ));
              },
            )));
  }
}
// to show the list of linkedAccount
class LinkedAccount {
  String title;
  bool select = false;
  LinkedAccount({required this.title});
}
