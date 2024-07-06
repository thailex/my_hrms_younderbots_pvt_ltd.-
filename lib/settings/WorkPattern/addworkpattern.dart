import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/settings/WorkPattern/addedworkpattern.dart';

import '../../color.dart';

class AddWorkPattern extends StatefulWidget {
  const AddWorkPattern({super.key});

  @override
  State<AddWorkPattern> createState() => _AddWorkPatternState();
}

class _AddWorkPatternState extends State<AddWorkPattern> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? selectedValue;
  // to show the list of workPattern

  List<String> workPattern = [
    'Normal Work',
    'Shift Work',
    'Remote Work',
    'Internship'
  ];
  // to show the list of workPattern

  List<WorkPattern> workPattern1 = [
    WorkPattern(
      day: 'Monday',
    ),
    WorkPattern(
      day: 'Tuesday',
    ),
    WorkPattern(day: 'Wednesday'),
    WorkPattern(day: 'Thursday'),
    WorkPattern(day: 'Friday'),
    WorkPattern(day: 'Saturday'),
    WorkPattern(day: 'Sunday')
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Work Pattern',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
      // to add new workPattern
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Name of Work Pattern',
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
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 17, top: 20, bottom: 20),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              )),
                          hintText: 'Name of Work Pattern',
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
                            return 'Please enter Name of Work Pattern';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Tardiness Tolerance (in minutes)',
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
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 17, top: 20, bottom: 20),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              )),
                          hintText: 'Tardiness Tolerance (in minutes)',
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
                            return 'Please enter Tardiness Tolerance (in minutes)';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 0.2,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      workPattern1[index].day,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.7,
                                          // (index == 0)
                                          //     ? 270
                                          //     : (index == 1)
                                          //         ? 262
                                          //         : (index == 2)
                                          //             ? 225
                                          //             : (index == 3)
                                          //                 ? 255
                                          //                 : (index == 4)
                                          //                     ? 295
                                          //                     : (index == 5)
                                          //                         ? 255
                                          //                         : 275,
                                          child: const Divider(
                                            height: 1,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  'Work Pattern',
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
                                        'Work Pattern',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                        )),
                                      ),
                                      items: workPattern
                                          .map((String item) =>
                                              DropdownMenuItem<String>(
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
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16),
                                        height: 60,
                                        width: 380,
                                      ),
                                      menuItemStyleData:
                                          const MenuItemStyleData(
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'Clock In',
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
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.5,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              suffixIcon: const Icon(
                                                Icons.access_time,
                                                color: Colors.black,
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 17,
                                                      top: 20,
                                                      bottom: 20),
                                              border: InputBorder.none,
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  borderSide: const BorderSide(
                                                    color: Colors.white,
                                                  )),
                                              hintText: 'Clock In',
                                              hintStyle: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey,
                                              )),
                                              filled: true,
                                              fillColor:
                                                  appColor.withOpacity(0.2),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Clock In time';
                                              }
                                              return null;
                                            },
                                            keyboardType:
                                                TextInputType.datetime,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'Clock Out',
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
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.5,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              suffixIcon: const Icon(
                                                Icons.access_time,
                                                color: Colors.black,
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 17,
                                                      top: 20,
                                                      bottom: 20),
                                              border: InputBorder.none,
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  borderSide: const BorderSide(
                                                    color: Colors.white,
                                                  )),
                                              hintText: 'Clock Out',
                                              hintStyle: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey,
                                              )),
                                              filled: true,
                                              fillColor:
                                                  appColor.withOpacity(0.2),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Name of Work Pattern';
                                              }
                                              return null;
                                            },
                                            keyboardType:
                                                TextInputType.datetime,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'Break',
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
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.5,
                                          child: TextFormField(
                                            keyboardType:
                                                TextInputType.datetime,
                                            decoration: InputDecoration(
                                              suffixIcon: const Icon(
                                                Icons.access_time,
                                                color: Colors.black,
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 17,
                                                      top: 20,
                                                      bottom: 20),
                                              border: InputBorder.none,
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  borderSide: const BorderSide(
                                                    color: Colors.white,
                                                  )),
                                              hintText: 'Break',
                                              hintStyle: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey,
                                              )),
                                              filled: true,
                                              fillColor:
                                                  appColor.withOpacity(0.2),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Clock In time';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'After Break',
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
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.5,
                                          child: TextFormField(
                                            keyboardType:
                                                TextInputType.datetime,
                                            decoration: InputDecoration(
                                              suffixIcon: const Icon(
                                                Icons.access_time,
                                                color: Colors.black,
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 17,
                                                      top: 20,
                                                      bottom: 20),
                                              border: InputBorder.none,
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  borderSide: const BorderSide(
                                                    color: Colors.white,
                                                  )),
                                              hintText: 'After Break',
                                              hintStyle: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey,
                                              )),
                                              filled: true,
                                              fillColor:
                                                  appColor.withOpacity(0.2),
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Name of Work Pattern';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 15.0),
                                child: Text(
                                  'Max.Break Minutes',
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
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    suffixIcon: const Icon(
                                      Icons.access_time,
                                      color: Colors.black,
                                    ),
                                    contentPadding: const EdgeInsets.only(
                                        left: 17, top: 20, bottom: 20),
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        )),
                                    hintText: 'Max.Break Minutes',
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
                                      return 'Please enter Max.Break Minutes';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
      persistentFooterButtons: [
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
                      builder: (context) => const AddedWorkPattern(),
                    ));
              },
              child: Container(
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
              ),
            )
          ],
        )
      ],
    ));
  }
}
// to show the data of workPattern
class WorkPattern {
  String day;
  WorkPattern({required this.day});
}
