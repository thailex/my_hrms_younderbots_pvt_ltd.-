import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../AccountsAndSecurity/accountsandsecurity.dart';

class DataAndAnalytics extends StatefulWidget {
  const DataAndAnalytics({super.key});

  @override
  State<DataAndAnalytics> createState() => _DataAndAnalyticsState();
}

class _DataAndAnalyticsState extends State<DataAndAnalytics> {
  // show the list of DataAndAnalytics
  List<AccountSecurityMethods> dataAnalytics = [
    AccountSecurityMethods(
        title: 'Data Usage',
        subTitle: 'Control how your data is used for analytics.'),
    AccountSecurityMethods(
        title: 'Ad Preference',
        subTitle: " Manage ad personalization settings."),
    AccountSecurityMethods(
        title: 'Download My Data', subTitle: 'Request a copy of your data.'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Data & Analytics',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
          // show the DataAndAnalytics
          body: ListView.builder(
        itemCount: dataAnalytics.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              dataAnalytics[index].title,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              )),
            ),
            subtitle: Text(
              dataAnalytics[index].subTitle,
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
    ));
  }
}
