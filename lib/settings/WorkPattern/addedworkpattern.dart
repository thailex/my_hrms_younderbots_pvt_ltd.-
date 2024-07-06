import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/settings/WorkPattern/addworkpattern.dart';

import '../../color.dart';
import '../../employeesanddepartment/managedepartment.dart';

class AddedWorkPattern extends StatefulWidget {
  const AddedWorkPattern({super.key});

  @override
  State<AddedWorkPattern> createState() => _AddedWorkPatternState();
}

class _AddedWorkPatternState extends State<AddedWorkPattern> {
  // to show the list of workPattern
  List<ManageDepartments> workPattern = [
    ManageDepartments(title: 'Product', subTitle: 'Normal Work'),
    ManageDepartments(title: 'Flutter', subTitle: 'Swift Work'),
    ManageDepartments(title: 'Human Resources', subTitle: 'Remote Work'),
    ManageDepartments(title: 'Marketing', subTitle: 'Part Time'),
    ManageDepartments(title: 'Sales', subTitle: 'Flexible Working'),
    ManageDepartments(
        title: 'Research and Development', subTitle: 'Job Sharing'),
    ManageDepartments(title: 'Finance', subTitle: 'Compressed Workweek'),
    ManageDepartments(title: 'Finance', subTitle: 'Internship'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Work Pattern',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
          // to show the  workPattern
          body: ListView.builder(
        itemCount: workPattern.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  workPattern[index].subTitle,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
                ),
                trailing: PopupMenuButton(
                  color: Colors.white,
                  offset: const Offset(0, 38),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                          value: 1,
                          child: Column(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.edit_outlined,
                                    color: Colors.black),
                                title: Text(
                                  'Edit Work Pattern',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  )),
                                ),
                              ),
                              const Divider(
                                height: 5,
                              )
                            ],
                          )),
                      PopupMenuItem(
                          value: 2,
                          child: ListTile(
                            leading: const Icon(Icons.delete_outline_outlined,
                                color: Colors.red),
                            title: Text(
                              'Remove WorkPattern',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              )),
                            ),
                          )),
                    ];
                  },
                  onSelected: (value) {
                    setState(() {
                      if (value == 2) {
                        bottomSheet();
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddWorkPattern(),
                            ));
                      }
                    });
                  },
                ),
              ),
              (index == workPattern.length - 1)
                  ? const SizedBox(
                      height: 10,
                    )
                  : const SizedBox(
                      width: 380,
                      child: Divider(
                        height: 30,
                      ),
                    )
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddWorkPattern(),
              ));
        },
        backgroundColor: appColor2,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
    ));
  }
  // to Remove Work Pattern
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
                  'Remove Work Pattern',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  )),
                ),
              ),
              const SizedBox(
                width: 350,
                child: Divider(
                  height: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30.0),
                child: Text(
                  "Removing the Work Pattern ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  )),
                ),
              ),
              Text(
                "will also remove all employees in it.",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                )),
              ),
              Text(
                "Are you Sure?",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                )),
              ),
              const SizedBox(
                height: 10,
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
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.cyan.shade50),
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
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
                      'Yes,Remove',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
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
