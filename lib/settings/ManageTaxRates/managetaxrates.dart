import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../attendance/attendance.dart';
import '../../attendance/leave.dart';
import '../../color.dart';

class ManageTaxRates extends StatefulWidget {
  const ManageTaxRates({super.key});

  @override
  State<ManageTaxRates> createState() => _ManageTaxRatesState();
}

class _ManageTaxRatesState extends State<ManageTaxRates> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? selectedValue;
  // to show the list of workPattern
  List<String> workPattern = [
    'Normal Work',
    'Shift Work',
    'Remote Work',
    'Internship'
  ];
  // to show the list of taxRatesMarketing

  List<Leaves> taxRatesMarketing = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Marketing Manager',
        time: '00:41:52',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Marketing Manager',
        time: '00:41:39',
        notes: '15%',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Marketing Manager',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Marketing Manager',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Marketing Manager',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of taxRatesFlutter

  List<Leaves> taxRatesFlutter = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Flutter Developer',
        time: '00:41:52',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Flutter Developer',
        time: '00:41:39',
        notes: '15%',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of taxRatesFinance

  List<Leaves> taxRatesFinance = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Finance Manager',
        time: '00:41:52',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Finance Manager',
        time: '00:41:39',
        notes: '15%',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Finance Manager',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Finance Manager',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Finance Manager',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of taxRatesHumanResources

  List<Leaves> taxRatesHumanResources = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Human Resources',
        time: '00:41:52',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Human Resources',
        time: '00:41:39',
        notes: '15%',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Human Resources',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Human Resources',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Human Resources',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of taxRatesBusiness

  List<Leaves> taxRatesBusiness = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Business Analyst',
        time: '00:41:52',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Business Analyst',
        time: '00:41:39',
        notes: '15%',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Business Analyst',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Business Analyst',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Business Analyst',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of taxRatesProduct

  List<Leaves> taxRatesProduct = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Product Manager',
        time: '00:41:52',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Product Manager',
        time: '00:41:39',
        notes: '15%',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Product Manager',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Product Manager',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Product Manager',
        time: '00:41:54',
        notes: '15%',
        leaveType: 'Sick Leave document.pdf'),
  ];
  List<Photos> images = [
    Photos(image: 'assets/Ellipse 63.png'),
    Photos(image: 'assets/p2.jpeg'),
    Photos(image: 'assets/Ellipse 55.png'),
    Photos(image: 'assets/Ellipse 57.png'),
    Photos(image: 'assets/p2.jpeg'),
    Photos(image: 'assets/Ellipse 58.png'),
    Photos(image: 'assets/Ellipse 63.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Tax Rates',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
      // to Manage Tax Rates
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Marketing',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            marketing(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Flutter',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            flutter(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Finance',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            finance(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Human Resources',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            humanResources(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Business',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            business(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Product',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            product(),
          ],
        ),
      ),
    ));
  }
  // to Edit Tax Rates
  bottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text(
                    'Edit Tax Rates',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 350,
                  child: Divider(
                    height: 30,
                  ),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/Ellipse 58.png'),
                ),
                title: Text(
                  'Hendry Adams',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Product - Product Manager',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                    width: 350,
                    child: Divider(
                      height: 20,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Tax Rates',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(left: 17, top: 20, bottom: 20),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          )),
                      hintText: 'Tax Rates',
                      hintStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      )),
                      filled: true,
                      fillColor: appColor.withOpacity(0.2),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Name of Work Pattern';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const Divider(
                height: 20,
              ),
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
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient:
                          const LinearGradient(colors: [appColor, appColor2]),
                    ),
                    child: Text(
                      'Save',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                    ),
                  )
                ],
              )
            ],
          );
        });
      },
    );
  }
  // to show the tax rate of marketing
  marketing() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: taxRatesMarketing.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              taxRatesMarketing[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              taxRatesMarketing[index].role!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  taxRatesMarketing[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    bottomSheet();
                  },
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  // to show the tax rate of flutter

  flutter() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: taxRatesFlutter.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              taxRatesFlutter[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              taxRatesFlutter[index].role!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  taxRatesFlutter[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    bottomSheet();
                  },
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  // to show the tax rate of finance

  finance() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: taxRatesFinance.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              taxRatesFinance[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              taxRatesFinance[index].role!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  taxRatesFinance[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    bottomSheet();
                  },
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  // to show the tax rate of humanResources

  humanResources() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: taxRatesHumanResources.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              taxRatesHumanResources[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              taxRatesHumanResources[index].role!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  taxRatesHumanResources[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    bottomSheet();
                  },
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  // to show the tax rate of business

  business() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: taxRatesBusiness.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              taxRatesBusiness[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              taxRatesBusiness[index].role!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  taxRatesBusiness[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    bottomSheet();
                  },
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  // to show the tax rate of product

  product() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: taxRatesProduct.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              taxRatesProduct[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              taxRatesProduct[index].role!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  taxRatesProduct[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    bottomSheet();
                  },
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
