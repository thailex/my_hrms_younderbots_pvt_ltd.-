import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../color.dart';
import 'editdepartment.dart';

class ManageDepartment extends StatefulWidget {
  const ManageDepartment({super.key});

  @override
  State<ManageDepartment> createState() => _ManageDepartmentState();
}

class _ManageDepartmentState extends State<ManageDepartment> {
  // to show data for manage departments
  List<ManageDepartments> manageDepartments = [
    ManageDepartments(title: 'Product', subTitle: 'Normal Work'),
    ManageDepartments(title: 'Flutter', subTitle: 'Normal Work'),
    ManageDepartments(title: 'Human Resources', subTitle: 'Normal Work'),
    ManageDepartments(title: 'Marketing', subTitle: 'Normal Work'),
    ManageDepartments(title: 'Sales', subTitle: 'Normal Work'),
    ManageDepartments(
        title: 'Research and Development', subTitle: 'Normal Work'),
    ManageDepartments(title: 'Finance', subTitle: 'Normal Work'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Department',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
          // to manage departments
          body: ListView.builder(
        itemCount: manageDepartments.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  manageDepartments[index].title,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    manageDepartments[index].subTitle,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    )),
                  ),
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
                                  'Edit Department',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 13,
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
                              'Remove Department',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 13,
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
                              builder: (context) => const EditDepartment(),
                            ));
                      }
                    });
                  },
                ),
              ),
              (index == manageDepartments.length - 1)
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
    ));
  }
  // to remove departments
  // to show bottomSheet
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
                  'Remove Department',
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
                  "Removing the 'Product' Department ",
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
// to show data for manage departments
class ManageDepartments {
  String title;
  String subTitle;
  ManageDepartments({required this.title, required this.subTitle});
}
