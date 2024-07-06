import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/login%20page/login.dart';
import 'package:hrms/settings/AccountsAndSecurity/accountsandsecurity.dart';
import 'package:hrms/settings/AppAppearance/appappearance.dart';
import 'package:hrms/settings/CompanyProfile/companyprofile.dart';
import 'package:hrms/settings/DataAndAnalytics/data&analytics.dart';
import 'package:hrms/settings/Help&Support/helpandsupport.dart';
import 'package:hrms/settings/LinkedAccounts/linkedaccounts.dart';
import 'package:hrms/settings/ManageAdmin/manageadmin.dart';
import 'package:hrms/settings/ManageDocuments/managedocuments.dart';
import 'package:hrms/settings/ManageSalaryRates/managesalaryrates.dart';
import 'package:hrms/settings/ManageTaxRates/managetaxrates.dart';
import 'package:hrms/settings/Notification/notification.dart';
import 'package:hrms/settings/WorkPattern/workpattern.dart';
import 'package:hrms/settings/WorkSchedule/workschedule.dart';

import '../color.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // to show list of setting
  List<Setting> setting = [
    Setting(
        title: 'Company Profile',
        leading: Icons.shopping_bag_outlined,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Work Pattern',
        leading: Icons.qr_code,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Workday Schedule',
        leading: Icons.query_builder_rounded,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Manage Salary Rates',
        leading: Icons.monetization_on_outlined,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Manage Tax Rates',
        leading: Icons.percent,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Manage Documents',
        leading: Icons.file_present,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Manage Admin',
        leading: Icons.people_alt_rounded,
        trailing: Icons.arrow_forward_ios_outlined),
  ];
  // to show list of setting
  List<Setting> setting1 = [
    Setting(
        title: 'Notification',
        leading: Icons.notifications_outlined,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Accounts & Security',
        leading: Icons.security,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Billing & Subscriptions',
        leading: Icons.star_border_purple500_outlined,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Payment Methods',
        leading: Icons.payment_rounded,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Linked Accounts',
        leading: Icons.compare_arrows,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'App Appearance',
        leading: Icons.remove_red_eye_outlined,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Data and Analytics',
        leading: Icons.data_exploration_outlined,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Help and Support',
        leading: Icons.contact_support_outlined,
        trailing: Icons.arrow_forward_ios_outlined),
    Setting(
        title: 'Logout',
        leading: Icons.logout,
        trailing: Icons.arrow_forward_ios_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
          // to show list of setting
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: setting.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      (index == 0)
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CompanyProfile(),
                              ))
                          : (index == 1)
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const WorkPattern(),
                                  ))
                              : (index == 2)
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const WorkSchedule()))
                                  : (index == 3)
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ManageSalaryRates()))
                                      : (index == 4)
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ManageTaxRates()))
                                          : (index == 6)
                                              ? Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const ManageAdmin()))
                                              : Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const ManageDocuments()));
                    },
                    child: ListTile(
                      title: Text(
                        setting[index].title,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                      leading: Icon(
                        setting[index].leading,
                        color: Colors.black,
                      ),
                      trailing: Icon(
                        setting[index].trailing,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text(
                    'General',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    )),
                  ),
                  const Divider()
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.4,
              child: ListView.builder(
                itemCount: setting1.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      (index == 0)
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Notify(),
                              ))
                          : (index == 1)
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AccountsAndSecurity(),
                                  ))
                              : (index == 6)
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DataAndAnalytics(),
                                      ))
                                  : (index == 4)
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LinkedAccounts(),
                                          ))
                                      : (index == 5)
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const AppAppearance(),
                                              ))
                                          : (index == 7)
                                              ? Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const HelpAndSupport(),
                                                  ))
                                              : bottomSheet();
                    },
                    child: ListTile(
                      title: Text(
                        setting1[index].title,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: (index == setting1.length - 1)
                              ? Colors.red
                              : Colors.black,
                        )),
                      ),
                      leading: Icon(
                        setting1[index].leading,
                        color: (index == setting1.length - 1)
                            ? Colors.red
                            : Colors.black,
                      ),
                      trailing: Icon(
                        setting1[index].trailing,
                        color: Colors.black,
                      ),
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
  // to show bottomSheet for logout
  bottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 350,
                child: Divider(
                  height: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30.0),
                child: Text(
                  "Are you sure you want to logout? ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  width: 350,
                  child: Divider(
                    height: 20,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.cyan.shade50),
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: appColor2,
                        )),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient:
                            const LinearGradient(colors: [appColor, appColor2]),
                      ),
                      child: Text(
                        'Yes,Logout',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  )
                ],
              )
            ],
          ));
        });
      },
    );
  }
}
// to show data of setting
class Setting {
  String title;
  IconData leading;
  IconData trailing;
  Setting({required this.title, required this.leading, required this.trailing});
}
