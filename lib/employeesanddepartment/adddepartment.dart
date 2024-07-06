import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';

class AddDepartment extends StatefulWidget {
  const AddDepartment({super.key});

  @override
  State<AddDepartment> createState() => _AddDepartmentState();
}

class _AddDepartmentState extends State<AddDepartment> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Map<String?, String?> selectedValues = {};
  // to add new department

  List<Department> department = [
    Department(text: 'Late Penalty', hintText: 'Yes', itemsList: [
      'Yes',
      'No',
    ]),
    Department(
        text: 'Note on Attendance In',
        hintText: 'Not Required',
        itemsList: [
          'Not Required',
          'Required',
        ]),
    Department(
        text: 'Note on Attendance Out',
        hintText: 'Not Required',
        itemsList: [
          'Not Required',
          'Required',
        ]),
    Department(
        text: 'Note on Overtime Clock-In',
        hintText: 'Not Required',
        itemsList: [
          'Not Required',
          'Required',
        ]),
    Department(
        text: 'Note on Overtime Clock-Out',
        hintText: 'Not Required',
        itemsList: [
          'Not Required',
          'Required',
        ]),
    Department(text: 'Supervisor', hintText: 'Choose Employee', itemsList: [
      'Manikandan',
      'Mari Selvam',
      'Hari',
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Department',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
          // to add new department

          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10),
              child: Text(
                'Department Name',
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
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        )),
                    hintText: 'Department Name',
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
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: department.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          department[index].text,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: appColor.withOpacity(0.2),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: Text(
                              department[index].hintText,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              )),
                            ),
                            items: department[index]
                                .itemsList
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
                            value: selectedValues[department[index].text],
                            onChanged: (String? value) {
                              setState(() {
                                selectedValues[department[index].text] =
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
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
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
}
// to add new department

class Department {
  String text;
  String hintText;
  List<String> itemsList;
  Department(
      {required this.text, required this.hintText, required this.itemsList});
}
