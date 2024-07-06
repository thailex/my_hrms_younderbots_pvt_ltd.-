import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../attendance/attendance.dart';
import '../../attendance/leave.dart';
import '../../color.dart';

class WorkSchedule extends StatefulWidget {
  const WorkSchedule({super.key});

  @override
  State<WorkSchedule> createState() => _WorkScheduleState();
}

class _WorkScheduleState extends State<WorkSchedule> {
  String? selectedValue;
  // to show the list of workPattern
  List<String> workPattern = [
    'Normal Work',
    'Shift Work',
    'Remote Work',
    'Internship'
  ];
  // to show the list of workScheduleMarketing
  List<Leaves> workScheduleMarketing = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Marketing Manager',
        time: '00:41:52',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Marketing Manager',
        time: '00:41:39',
        notes: 'Shift Work',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Marketing Manager',
        time: '00:41:54',
        notes: 'Part Time',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Marketing Manager',
        time: '00:41:54',
        notes: 'Internship',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Marketing Manager',
        time: '00:41:54',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of workScheduleFlutter

  List<Leaves> workScheduleFlutter = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Flutter Developer',
        time: '00:41:52',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Flutter Developer',
        time: '00:41:39',
        notes: 'Shift Work',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes: 'Part Time',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes: 'Internship',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Flutter Developer',
        time: '00:41:54',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of workScheduleFinance

  List<Leaves> workScheduleFinance = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Finance Manager',
        time: '00:41:52',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Finance Manager',
        time: '00:41:39',
        notes: 'Shift Work',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Finance Manager',
        time: '00:41:54',
        notes: 'Part Time',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Finance Manager',
        time: '00:41:54',
        notes: 'Internship',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Finance Manager',
        time: '00:41:54',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of workScheduleHumanResources

  List<Leaves> workScheduleHumanResources = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Human Resources',
        time: '00:41:52',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Human Resources',
        time: '00:41:39',
        notes: 'Shift Work',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Human Resources',
        time: '00:41:54',
        notes: 'Part Time',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Human Resources',
        time: '00:41:54',
        notes: 'Internship',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Human Resources',
        time: '00:41:54',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of workScheduleBusiness

  List<Leaves> workScheduleBusiness = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Business Analyst',
        time: '00:41:52',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Business Analyst',
        time: '00:41:39',
        notes: 'Shift Work',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Business Analyst',
        time: '00:41:54',
        notes: 'Part Time',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Business Analyst',
        time: '00:41:54',
        notes: 'Internship',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Business Analyst',
        time: '00:41:54',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of workScheduleProduct

  List<Leaves> workScheduleProduct = [
    Leaves(
        name: 'Hendry Adams',
        role: 'Product Manager',
        time: '00:41:52',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Mari Selvam',
        role: 'Product Manager',
        time: '00:41:39',
        notes: 'Shift Work',
        leaveType: 'Family Emergency document.pdf'),
    Leaves(
        name: 'Muthu',
        role: 'Product Manager',
        time: '00:41:54',
        notes: 'Part Time',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Hari',
        role: 'Product Manager',
        time: '00:41:54',
        notes: 'Internship',
        leaveType: 'Sick Leave document.pdf'),
    Leaves(
        name: 'Sri',
        role: 'Product Manager',
        time: '00:41:54',
        notes: 'Normal Work',
        leaveType: 'Sick Leave document.pdf'),
  ];
  // to show the list of workPattern

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
          'Work Schedule',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
          // to show Work Schedule
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
  // to show bottomSheet for Edit Work Schedule
  bottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text(
                    'Edit Work Schedule',
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
                  backgroundImage: AssetImage('assets/Ellipse 55.png'),
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
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Work Pattern',
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
                child: Container(
                  decoration: BoxDecoration(
                      color: appColor.withOpacity(0.2),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Text(
                        'Work Pattern',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        )),
                      ),
                      items: workPattern
                          .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue =
                              value; // Update selected value for the corresponding dropdown
                        });
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 60,
                        width: 380,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 50,
                      ),
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
  // to show Work Schedule for marketing

  marketing() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: workScheduleMarketing.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              workScheduleMarketing[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              workScheduleMarketing[index].role!,
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
                  workScheduleMarketing[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
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
  // to show Work Schedule for flutter

  flutter() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: workScheduleFlutter.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              workScheduleFlutter[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              workScheduleFlutter[index].role!,
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
                  workScheduleFlutter[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
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
  // to show Work Schedule for finance

  finance() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: workScheduleFinance.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              workScheduleFinance[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              workScheduleFinance[index].role!,
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
                  workScheduleFinance[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
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
  // to show Work Schedule for humanResources

  humanResources() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: workScheduleHumanResources.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              workScheduleHumanResources[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              workScheduleHumanResources[index].role!,
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
                  workScheduleHumanResources[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
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
  // to show Work Schedule for business

  business() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: workScheduleBusiness.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              workScheduleBusiness[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              workScheduleBusiness[index].role!,
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
                  workScheduleBusiness[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
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
  // to show Work Schedule for product

  product() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: workScheduleProduct.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              workScheduleProduct[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              workScheduleProduct[index].role!,
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
                  workScheduleProduct[index].notes!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
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
// to show data for Work Schedule

class WorkScheduleRole {
  String role;
  WorkScheduleRole({required this.role});
}
