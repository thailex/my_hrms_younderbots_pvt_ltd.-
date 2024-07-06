import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';
import 'package:hrms/g.dart';
import 'package:intl/intl.dart';

class ApplyLeave extends StatefulWidget {
  const ApplyLeave({super.key});

  @override
  State<ApplyLeave> createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController dateinput1 = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final firstDate = DateTime(DateTime.now().year - 120);
  final lastDate = DateTime.now();
  DateTime? selectedDate;
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            )),
        title: Text(
          'Apply Leave',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
      // to apply leave
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       IconButton(
              //           onPressed: () {
              //             Navigator.pop(context);
              //           },
              //           icon: const Icon(
              //             Icons.arrow_back_ios_new_outlined,
              //             color: Colors.black,
              //           )),
              //       Padding(
              //         padding: const EdgeInsets.only(left: 100.0),
              //         child: Text(
              //           'Apply Leave',
              //           style: GoogleFonts.poppins(
              //               textStyle: const TextStyle(
              //             fontSize: 18,
              //             fontWeight: FontWeight.w600,
              //             color: Colors.black,
              //           )),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(15)),
                          filled: true,
                          fillColor: const Color(0xFFF7F7F7),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Title',
                          labelStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                              color: appColor2,
                            ),
                          ),
                          hintText: 'Enter title here',
                          hintStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter details';
                          } else if (value.length < 2) {
                            return 'Enter Correct Details';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(15)),
                          filled: true,
                          fillColor: const Color(0xFFF7F7F7),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Leave Type',
                          labelStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: appColor2,
                            ),
                          ),
                          hintText: 'Enter leave type',
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter details';
                          } else if (value.length < 6) {
                            return 'Enter correct details';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        keyboardType: const TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFF7F7F7),
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Contact Number',
                          labelStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: appColor2,
                            ),
                          ),
                          hintText: 'Enter contact number',
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter contact number';
                          } else if (value.length < 11) {
                            return 'Enter your correct contact number';
                          }
                          return null;
                        },
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: InputDatePickerFormField(
                    //       firstDate: firstDate,
                    //       lastDate: lastDate,
                    //       fieldLabelText: 'Start date',
                    //
                    //       onDateSubmitted: (date) {
                    //         print(date);
                    //         setState(() {
                    //           selectedDate = date;
                    //         });
                    //       },
                    //       onDateSaved: (date) {
                    //         print(date);
                    //         setState(() {
                    //           selectedDate = date;
                    //         });
                    //       }),
                    // ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101));

                          if (pickedDate != null) {
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);

                            setState(() {
                              dateinput.text = formattedDate;
                            });
                          }
                        },
                        child: TextFormField(
                          controller: dateinput,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabled: false,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Start date',
                            labelStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: appColor2),
                            ),
                            hintText: 'Enter start date',
                            hintStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            )),
                            filled: true,
                            fillColor: const Color(0xFFF7F7F7),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.date_range_rounded,
                                  color: Colors.black),
                              onPressed: () {},
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter start date';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2101));

                          if (pickedDate != null) {
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);

                            setState(() {
                              dateinput1.text = formattedDate;
                            });
                          }
                        },
                        child: TextFormField(
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          controller: dateinput1,
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabled: false,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'End date',
                            labelStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: appColor2,
                              ),
                            ),
                            hintText: 'Enter end date',
                            hintStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            )),
                            filled: true,
                            fillColor: const Color(0xFFF7F7F7),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.date_range_rounded,
                                  color: Colors.black),
                              onPressed: () {},
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter start date';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15.0, left: 15, bottom: 2),
                      child: Text('Reason for leave',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: appColor2),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10.0, left: 10, bottom: 30),
                      child: TextFormField(
                        maxLines: 5,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(15)),
                          filled: true,
                          fillColor: const Color(0xFFF7F7F7),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter details';
                          } else if (value.length < 2) {
                            return 'Enter Correct Details';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  bottomSheet();
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          colors: [
                            appColor,
                            appColor2,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Center(
                    child: Text(
                      'Apply Leave',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
  // to apply leave
  // to show bottomSheet
  bottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/tickgif.gif",
                  scale: 2.4,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(60.0),
                //   child: AvatarGlow(
                //     glowColor: Colors.black,
                //     glowShape: BoxShape.circle,
                //     curve: Curves.fastOutSlowIn,
                //     child: const CircleAvatar(
                //       backgroundColor: Colors.blue,
                //       radius: 40,
                //       child: Icon(
                //         Icons.check,
                //         color: Colors.white,
                //         size: 50,
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 10),
                  child: CustomGradient(
                    child: Text(
                      'Leave Applied\n Successfully',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )),
                    ),
                  ),
                ),
                Text(
                  'Your Leave has been\napplied successfully',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            appColor,
                            appColor2,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Done',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
      },
    );
  }
}
