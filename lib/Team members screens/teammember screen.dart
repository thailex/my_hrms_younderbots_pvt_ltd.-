import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/Holidaylist/attendancedetails.dart';
import 'package:hrms/Team%20members%20screens/findlocation.dart';
import 'package:hrms/color.dart';
import 'package:hrms/g.dart';

class TeamMember extends StatefulWidget {
  const TeamMember({super.key});

  @override
  State<TeamMember> createState() => _TeamMemberState();
}

class _TeamMemberState extends State<TeamMember> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // to show teamMembers
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomGradient(
                      child: Text(
                        'Team Members',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        )),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.3))),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        size: 40,
                        color: Colors.black.withOpacity(0.7),
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[400]),
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
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.7,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        teamMembers(
                          (index == 0)
                              ? 'Jane Hawkins'
                              : (index == 1)
                                  ? 'Brooklin'
                                  : (index == 2)
                                      ? 'Alexander'
                                      : (index == 3)
                                          ? 'Ronald'
                                          : 'jennie',
                          (index == 0)
                              ? 'Janehawkins@gmail.com'
                              : (index == 1)
                                  ? 'Brooklingmail.com'
                                  : (index == 2)
                                      ? 'Alexandergmail.com'
                                      : (index == 3)
                                          ? 'Ronaldgmail.com'
                                          : 'jenniegmail.com',
                        ),
                        const Divider(
                          height: 20,
                          thickness: 0.2,
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(left: 10, bottom: 50, right: 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                        colors: [
                          appColor,
                          appColor2,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add_circle_outline_rounded,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Add Member',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  // to show teamMembers

  teamMembers(name, mail) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AttendanceDetails(),
              ));
        });
      },
      child: ListTile(
        leading: const CircleAvatar(
          maxRadius: 30,
          backgroundImage: AssetImage('assets/teamleave.jpeg'),
        ),
        title: Text(
          name,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        subtitle: Text(
          mail,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          )),
        ),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              bottomSheet();
            });
          },
          icon: const Icon(Icons.more_vert_outlined),
        ),
      ),
    );
  }
  // to show bottom sheet for teamMembers
  bottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return Container(
              height: 150,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                    child: Row(
                      children: [
                        const Icon(Icons.phone_in_talk_outlined),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Call',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FindLocation(),
                            ));
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_rounded,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Find location',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.delete_forever,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'delete',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          });
        });
  }
}
