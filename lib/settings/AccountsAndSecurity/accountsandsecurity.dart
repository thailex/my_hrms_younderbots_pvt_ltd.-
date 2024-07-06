import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color.dart';

class AccountsAndSecurity extends StatefulWidget {
  const AccountsAndSecurity({super.key});

  @override
  State<AccountsAndSecurity> createState() => _AccountsAndSecurityState();
}

class _AccountsAndSecurityState extends State<AccountsAndSecurity> {
  // to show the accountSecurity
  List<AccountSecurity> accountSecurity = [
    AccountSecurity(
      title: 'Biometric Id',
    ),
    AccountSecurity(
      title: 'Face Id',
    ),
    AccountSecurity(
      title: 'SMS Authenticator',
    ),
    AccountSecurity(
      title: 'Google Authenticator',
    ),
  ];
  // to show the accountSecurity methods
  List<AccountSecurityMethods> accountSecurityMethods = [
    AccountSecurityMethods(
        title: 'Device Management',
        subTitle: 'Manage your account on the various devices you own'),
    AccountSecurityMethods(
        title: 'Deactivate Account',
        subTitle:
            "Temporarily deactivate your account.Easily reactivate when you're ready"),
    AccountSecurityMethods(
        title: 'Delete Acoount',
        subTitle: 'Permanently delete your account and data'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Account & Security',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
          // to show the accountSecurity methods
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.4,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: accountSecurity.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(
                        accountSecurity[index].title,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            accountSecurity[index].select =
                                !accountSecurity[index].select;
                          });
                        },
                        icon: (accountSecurity[index].select)
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
            ),
            ListTile(
              title: Text(
                'Change Password',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                itemCount: accountSecurityMethods.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      accountSecurityMethods[index].title,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: (index == 2) ? Colors.red : Colors.black,
                      )),
                    ),
                    subtitle: Text(
                      accountSecurityMethods[index].subTitle,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      )),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
// to show data for AccountSecurity
class AccountSecurity {
  String title;
  bool select = false;
  AccountSecurity({required this.title});
}
// to show data for AccountSecurityMethods
class AccountSecurityMethods {
  String title;
  String subTitle;
  bool select = false;
  AccountSecurityMethods({required this.title, required this.subTitle});
}
