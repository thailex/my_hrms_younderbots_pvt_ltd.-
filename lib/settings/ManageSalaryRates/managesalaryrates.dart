import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../attendance/attendance.dart';
import '../../attendance/leave.dart';
import '../../color.dart';

class ManageSalaryRates extends StatefulWidget {
  const ManageSalaryRates({super.key});

  @override
  State<ManageSalaryRates> createState() => _ManageSalaryRatesState();
}

class _ManageSalaryRatesState extends State<ManageSalaryRates> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? selectedValue;
  // to show the list of workPattern
  List<String> workPattern = [
    'Normal Work',
    'Shift Work',
    'Remote Work',
    'Internship'
  ];
  // to show the list of salaryRatesMarketing
  List<Leaves> salaryRatesMarketing = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Marketing Manager',
        time: '00:41:52',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Marketing Manager',
        time: '00:41:39',
        notes: '\$50',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Marketing Manager',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Marketing Manager',
        time: '00:41:54',
        notes: '\$40',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Marketing Manager',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of salaryRatesFlutter
  List<Leaves> salaryRatesFlutter = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Flutter Developer',
        time: '00:41:52',
        notes: '\$40',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Flutter Developer',
        time: '00:41:39',
        notes: '\$60',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes: '\$50',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of salaryRatesFinance
  List<Leaves> salaryRatesFinance = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Finance Manager',
        time: '00:41:52',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Finance Manager',
        time: '00:41:39',
        notes: '\$60',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Finance Manager',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Finance Manager',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Finance Manager',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of salaryRatesHumanResources
  List<Leaves> salaryRatesHumanResources = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Human Resources',
        time: '00:41:52',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Human Resources',
        time: '00:41:39',
        notes: '\$60',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Human Resources',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Human Resources',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Human Resources',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of salaryRatesBusiness
  List<Leaves> salaryRatesBusiness = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Business Analyst',
        time: '00:41:52',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Business Analyst',
        time: '00:41:39',
        notes: '\$60',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Business Analyst',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Business Analyst',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Business Analyst',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of salaryRatesProduct
  List<Leaves> salaryRatesProduct = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Product Manager',
        time: '00:41:52',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Product Manager',
        time: '00:41:39',
        notes: '\$60',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Product Manager',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Product Manager',
        time: '00:41:54',
        notes: '\$60',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Product Manager',
        time: '00:41:54',
        notes: '\$60',
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
          'Manage Salary Rates',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
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

  // to show bottomSheet for Edit Salary Rates
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
                    'Edit Salary Rates',
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
                  backgroundImage: AssetImage('assets/Ellipse 63.png'),
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
                  'Salary Rates (per hour)',
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
                      hintText: 'Salary Rates (per hour)',
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
              const Center(
                child: SizedBox(
                    width: 350,
                    child: Divider(
                      height: 20,
                    )),
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

  // to show the list of marketing
  marketing() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: salaryRatesMarketing.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              salaryRatesMarketing[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              salaryRatesMarketing[index].role!,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      salaryRatesMarketing[index].notes!,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      '/hour',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
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
  // to show the list of flutter

  flutter() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: salaryRatesFlutter.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              salaryRatesFlutter[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              salaryRatesFlutter[index].role!,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      salaryRatesFlutter[index].notes!,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      '/hour',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
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
  // to show the list of finance

  finance() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: salaryRatesFinance.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              salaryRatesFinance[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              salaryRatesFinance[index].role!,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      salaryRatesFinance[index].notes!,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      '/hour',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
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
  // to show the list of humanResources

  humanResources() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: salaryRatesHumanResources.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              salaryRatesHumanResources[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              salaryRatesHumanResources[index].role!,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      salaryRatesHumanResources[index].notes!,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      '/hour',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
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
  // to show the list of business

  business() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: salaryRatesBusiness.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              salaryRatesBusiness[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              salaryRatesBusiness[index].role!,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      salaryRatesBusiness[index].notes!,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      '/hour',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
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
  // to show the list of product

  product() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: salaryRatesProduct.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              salaryRatesProduct[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              salaryRatesProduct[index].role!,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      salaryRatesProduct[index].notes!,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      '/hour',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
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
