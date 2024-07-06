import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';

import 'helpandsupport.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // to show the list of faqs
  List<Faqs> faqs = [
    Faqs(
        header: 'What is HRMS?',
        body:
            'HRMS is a HR Management System that helps business streamline HR process and improve employee management'),
    Faqs(
        header: 'How do I sign up for HRMS?',
        body:
            'HRMS is a HR Management System that helps business streamline HR process and improve employee management'),
    Faqs(
        header: 'Can I use HRMS for free?',
        body:
            'HRMS is a HR Management System that helps business streamline HR process and improve employee management'),
    Faqs(
        header: 'Is my data secure on HRMS?',
        body:
            'HRMS is a HR Management System that helps business streamline HR process and improve employee management'),
    Faqs(
        header: 'Can I export data from HRMS?',
        body:
            'HRMS is a HR Management System that helps business streamline HR process and improve employee management'),
    Faqs(
        header: 'How do I reset my Password?',
        body:
            'HRMS is a HR Management System that helps business streamline HR process and improve employee management'),
  ];
  ScrollController controller = ScrollController();
  ScrollController controller1 = ScrollController();
  // to show the list of faqs
  List<Help> faq = [
    Help(title: 'General'),
    Help(title: 'Account'),
    Help(title: 'Services'),
    Help(title: 'About Us'),
    Help(title: 'Rate Us'),
  ];
  bool isPressed = false;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'FAQ',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
      // to show the faqs
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            SingleChildScrollView(
              controller: controller1,
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPressed = !isPressed;
                      isPressed1 = false;
                      isPressed2 = false;
                      isPressed3 = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: (isPressed) ? appColor2 : Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: appColor2, width: 2)),
                    child: Text(
                      'General',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 12,
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
                      isPressed3 = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: (isPressed1) ? appColor2 : Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: appColor2, width: 2)),
                    child: Text(
                      'Account',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 12,
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
                      isPressed1 = false;
                      isPressed = false;
                      isPressed3 = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: (isPressed2) ? appColor2 : Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: appColor2, width: 2)),
                    child: Text(
                      'Services',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: (isPressed2) ? Colors.white : Colors.black,
                      )),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPressed3 = !isPressed3;
                      isPressed1 = false;
                      isPressed2 = false;
                      isPressed = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: (isPressed3) ? appColor2 : Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: appColor2, width: 2)),
                    child: Text(
                      'General',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: (isPressed3) ? Colors.white : Colors.black,
                      )),
                    ),
                  ),
                )
              ]),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(left: 17, top: 15, bottom: 15),
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          color: appColor2,
                          width: 1,
                        )),
                    hintText: 'Search',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    )),
                    filled: true,
                    fillColor: appColor.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.1,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: faqs.length,
                itemBuilder: (context, ind) {
                  return Container(
                    margin: const EdgeInsets.only(
                        left: 15, right: 15, top: 8, bottom: 8),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: appColor2, width: 2),
                    ),
                    child: ExpansionPanelList(
                      elevation: 0,
                      dividerColor: Colors.black,
                      expansionCallback: (int index, bool isExpanded) {
                        setState(() {
                          faqs[ind].isExpanded = !faqs[ind].isExpanded;
                        });
                      },
                      expandIconColor: Colors.cyanAccent,
                      animationDuration: const Duration(seconds: 1),
                      children: [
                        ExpansionPanel(
                            headerBuilder: (context, isExpanded) {
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  faqs[ind].header,
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              );
                            },
                            body: Column(
                              children: [
                                const Divider(
                                  height: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    faqs[ind].body,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                            isExpanded: faqs[ind].isExpanded,
                            canTapOnHeader: true),
                      ],
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

// to show the list of faqs
class Faqs {
  String header;
  String body;
  bool isExpanded = false;
  Faqs({required this.header, required this.body});
}
