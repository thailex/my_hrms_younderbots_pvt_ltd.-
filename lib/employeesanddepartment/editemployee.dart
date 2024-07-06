import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';

class EditEmployee extends StatefulWidget {
  const EditEmployee({super.key});

  @override
  State<EditEmployee> createState() => _EditEmployeeState();
}

class _EditEmployeeState extends State<EditEmployee> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  // to show data for edit employees
  List<String> employeeStatus = ['Permanent', 'Temporary'];
  // to show data for edit employees

  List<String> department = ['Flutter', 'Marketing', 'Product', 'Sales'];
  // to show data for edit employees

  List<String> gender = ['Male', 'Female'];

  String? selectedValue;
  String? selectedValue1;
  String? selectedValue2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Employee',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            color: Colors.white,
            offset: const Offset(0, 38),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    value: 1,
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.lock_outline,
                              color: Colors.black),
                          title: Text(
                            'Deactivate Employee',
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
                        'Remove Employee',
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
                }
              });
            },
          ),
        ],
      ),
      // to edit the employee
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipOval(
                    child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey.shade400,
                  child: const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.grey,
                  ),
                )),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    gradient:
                        const LinearGradient(colors: [appColor, appColor2]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.edit_outlined,
                    size: 15.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Profile Picture',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Full Name',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
          ),
        ),
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
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
                hintText: 'Full Name',
                hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                )),
                filled: true,
                fillColor: appColor.withOpacity(0.2),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter department name';
                }
                return null;
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Position',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
          ),
        ),
        Form(
          key: _formKey1,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    const EdgeInsets.only(left: 17, top: 20, bottom: 20),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    )),
                hintText: 'Position',
                hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                )),
                filled: true,
                fillColor: appColor.withOpacity(0.2),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter department name';
                }
                return null;
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Employee Status',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 14,
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
                  'Employee Status',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  )),
                ),
                items: employeeStatus
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
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Department',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 14,
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
                  'Department',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  )),
                ),
                items: department
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ))
                    .toList(),
                value: selectedValue1,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue1 =
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
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Gender',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 14,
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
                  'Gender',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  )),
                ),
                items: gender
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ))
                    .toList(),
                value: selectedValue2,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue2 =
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
      ])),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
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
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: appColor2,
                )),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 15, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(colors: [appColor, appColor2]),
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
    ));
  }
  //to remove employee
  // to show bottom sheet
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
                  'Remove Employee',
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
                  "Are you sure you want to remove ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  )),
                ),
              ),
              Text(
                "'Hendry Adams' as Employee",
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
