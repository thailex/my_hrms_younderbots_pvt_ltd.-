import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  bool isPressed = true;
  bool isPressed1 = false;
  bool isPressed2 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Profile',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
          ),
          centerTitle: true,
        ),
        // to show profile of an employee
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressed = true;
                        isPressed1 = false;
                        isPressed2 = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              isPressed ? appColor : Colors.grey.shade200,
                              isPressed ? appColor2 : Colors.grey.shade200,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Personal',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: isPressed ? Colors.white : Colors.black,
                          )),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressed1 = true;
                        isPressed = false;
                        isPressed2 = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              isPressed1 ? appColor : Colors.grey.shade200,
                              isPressed1 ? appColor2 : Colors.grey.shade200,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Professional',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: isPressed1 ? Colors.white : Colors.black,
                          )),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isPressed2 = true;
                        isPressed = false;
                        isPressed1 = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              isPressed2 ? appColor : Colors.grey.shade200,
                              isPressed2 ? appColor2 : Colors.grey.shade200,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Documents',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: isPressed2 ? Colors.white : Colors.black,
                          )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            if (isPressed == true) personalList(),
            if (isPressed1 == true) professionalList(),
            if (isPressed2 == true) documentsList(),
          ],
        ),
      ),
    );
  }
  // to show personal profile
  personal(title, subtitle) {
    return ListTile(
      title: SizedBox(
        width: 200,
        child: Text(
          title,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          )),
        ),
      ),
      subtitle: SizedBox(
        width: 200,
        child: Text(
          subtitle,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
        ),
      ),
    );
  }
  // to show the list of personal profile

  personalList() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return personal(
            (index == 0)
                ? 'Full Name'
                : (index == 1)
                    ? 'Email Address'
                    : (index == 2)
                        ? 'Phone Number'
                        : 'Address',
            (index == 0)
                ? 'Mari Selvam'
                : (index == 1)
                    ? 'Mariselvam@gmail.com'
                    : (index == 2)
                        ? '9629084116'
                        : '234/2 mandjc',
          );
        },
      ),
    );
  }
  // to show professional profile

  professionalList() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return personal(
              (index == 0)
                  ? 'Employee id'
                  : (index == 1)
                      ? 'Designation'
                      : (index == 2)
                          ? 'Company Email Address'
                          : (index == 3)
                              ? 'Employee type'
                              : (index == 4)
                                  ? 'Department'
                                  : (index == 5)
                                      ? 'Reporting Manager'
                                      : (index == 6)
                                          ? 'Company Experience'
                                          : 'Office Time',
              (index == 0)
                  ? '787645'
                  : (index == 1)
                      ? 'Flutter Developer'
                      : (index == 2)
                          ? 'mari@gmail.com'
                          : (index == 3)
                              ? 'Permanent'
                              : (index == 4)
                                  ? 'Design'
                                  : (index == 5)
                                      ? 'Robert'
                                      : (index == 6)
                                          ? '2 years'
                                          : '9:00 AM - 6:00 PM');
        },
      ),
    );
  }
  // to show documents

  documents(title) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[200],
        child: const Icon(
          Icons.terminal_rounded,
          color: Colors.black,
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        )),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.sim_card_download_outlined),
      ),
    );
  }
  // to show the list of professional profile

  documentsList() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return documents((index == 0)
              ? 'Offer Letter'
              : (index == 1)
                  ? 'Appointment Letter'
                  : (index == 2)
                      ? 'Bond Agreement'
                      : (index == 3)
                          ? 'Appraisal Letter'
                          : 'Salary Slip');
        },
      ),
    );
  }
}
