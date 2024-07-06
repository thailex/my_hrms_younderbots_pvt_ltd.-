import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:hrms/employeesanddepartment/adddepartment.dart';
import 'package:hrms/employeesanddepartment/addnewemployees.dart';
import 'package:hrms/employeesanddepartment/editemployee.dart';
import 'package:hrms/employeesanddepartment/managedepartment.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import '../Home Pages/chooseapp.dart';
import '../attendance/afterbreak.dart';
import '../attendance/attendance.dart';
import '../attendance/break.dart';
import '../attendance/checkin.dart';
import '../attendance/leave.dart';
import '../attendance/notcheckin.dart';
import '../attendance/overtimeout.dart';
import '../color.dart';

class EmployeeDetails extends StatefulWidget {
  const EmployeeDetails({super.key});

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  // to display colors
  List<Colorss> cls = [
    Colorss(color: Colors.green[200]),
    Colorss(color: Colors.blue[200]),
    Colorss(color: Colors.deepPurple[200]),
    Colorss(color: Colors.greenAccent[200]),
    Colorss(color: Colors.brown[200]),
    Colorss(color: Colors.red[200]),
    Colorss(color: Colors.purple[200]),
    Colorss(color: Colors.blue[200]),
  ];
  List<Colorss> cls4 = [
    Colorss(color: Colors.yellow.shade50),
    Colorss(color: Colors.cyan.shade50),
    Colorss(color: Colors.deepPurple.shade50),
    Colorss(color: Colors.green.shade50),
    Colorss(color: Colors.brown.shade50),
    Colorss(color: Colors.red.shade50),
    Colorss(color: Colors.purple.shade50),
    Colorss(color: Colors.cyan.shade50),
  ];
  List<Colorss> cls5 = [
    Colorss(color: Colors.yellow),
    Colorss(color: Colors.cyan),
    Colorss(color: Colors.deepPurple),
    Colorss(color: Colors.green),
    Colorss(color: Colors.brown),
    Colorss(color: Colors.red),
    Colorss(color: Colors.purple),
    Colorss(color: Colors.cyan),
  ];
  // to display images
  List<Photos> images = [
    Photos(image: 'assets/Ellipse 55.png'),
    Photos(image: 'assets/p2.jpeg'),
    Photos(image: 'assets/Ellipse 57.png'),
    Photos(image: 'assets/Ellipse 58.png'),
    Photos(image: 'assets/p2.jpeg'),
    Photos(image: 'assets/Ellipse 63.png'),
    Photos(image: 'assets/Ellipse 55.png'),
  ];
  List<Photos1> images1 = [
    Photos1(image: 'assets/Ellipse 63.png'),
    Photos1(image: 'assets/p2.jpeg'),
    Photos1(image: 'assets/Ellipse 55.png'),
    Photos1(image: 'assets/Ellipse 58.png'),
    Photos1(image: 'assets/p2.jpeg'),
    Photos1(image: 'assets/Ellipse 57.png'),
    Photos1(image: 'assets/Ellipse 55.png'),
  ];
  List<Photos2> images2 = [
    Photos2(image: 'assets/Ellipse 58.png'),
    Photos2(image: 'assets/Ellipse 57.png'),
    Photos2(image: 'assets/Ellipse 63.png'),
  ];
  List<Photos3> images3 = [
    Photos3(image: 'assets/Ellipse 55.png'),
    Photos3(image: 'assets/Ellipse 58.png'),
    Photos3(image: 'assets/Ellipse 57.png'),
  ];
  List<Photos4> images4 = [
    Photos4(image: 'assets/Ellipse 55.png'),
    Photos4(image: 'assets/Ellipse 58.png'),
    Photos4(image: 'assets/Ellipse 57.png'),
  ];
  List<Photos5> images5 = [
    Photos5(image: 'assets/Ellipse 57.png'),
    Photos5(image: 'assets/p2.jpeg'),
    Photos5(image: 'assets/Ellipse 63.png'),
  ];
  // to show status of an employee
  List<Status> status = [
    Status(title: 'Marketing (5)'),
    Status(title: 'Flutter(5)'),
    Status(title: 'Finance (3)'),
    Status(title: 'Human Resources(3)'),
    Status(title: 'Business(5)'),
    Status(title: 'Product (4)'),
  ];
  late final ScrollController _controller = ScrollController();
  late final ScrollController _controlle1r = ScrollController();
  // to show data for expansionListTile
  List<ExpandList> expand = [
    ExpandList(header: 'Employee Status', body: employeeStatus()),
    ExpandList(header: 'Gender Diversity', body: genderDiversity()),
    ExpandList(header: 'Marketing', body: marketing()),
    ExpandList(header: 'Flutter', body: marketing()),
    ExpandList(header: 'Human Resources', body: marketing()),
    ExpandList(header: 'Business', body: marketing()),
    ExpandList(header: 'Product', body: marketing()),
  ];
  List<AttendanceStatus> employeeDetail = [
    AttendanceStatus(
        color: Colors.yellow.shade50,
        image: [
          'assets/Ellipse 63.png',
          'assets/p2.jpeg',
          'assets/Ellipse 58.png',
          'assets/Ellipse 57.png',
          'assets/p2.jpeg',
          'assets/Ellipse 55.png',
          'assets/Ellipse 58.png'
        ],
        status: 'Marketing (5)',
        borderColor: Colors.green),
    AttendanceStatus(
        color: Colors.cyan.shade50,
        image: [
          'assets/Ellipse 55.png',
          'assets/p2.jpeg',
          'assets/Ellipse 63.png',
          'assets/Ellipse 58.png',
          'assets/p2.jpeg',
          'assets/Ellipse 57.png',
          'assets/Ellipse 63.png'
        ],
        status: 'Flutter (7)',
        borderColor: Colors.blue),
    AttendanceStatus(
        color: Colors.deepPurple.shade50,
        image: [
          'assets/Ellipse 63.png',
          'assets/p2.jpeg',
          'assets/Ellipse 55.png',
        ],
        status: 'Finance (3)',
        borderColor: Colors.deepPurpleAccent),
    AttendanceStatus(
        color: Colors.green.shade50,
        image: [
          'assets/Ellipse 58.png',
          'assets/Ellipse 55.png',
          'assets/Ellipse 57.png',
        ],
        status: 'Human Resources (3)',
        borderColor: Colors.greenAccent),
    AttendanceStatus(
        color: Colors.brown.shade50,
        image: [
          'assets/Ellipse 63.png',
          'assets/p2.jpeg',
          'assets/Ellipse 57.png',
        ],
        status: 'Business (3)',
        borderColor: Colors.brown.shade800),
    AttendanceStatus(
        color: Colors.red.shade50,
        image: [
          'assets/Ellipse 58.png',
          'assets/Ellipse 55.png',
          'assets/Ellipse 57.png',
        ],
        status: 'Product (3)',
        borderColor: Colors.redAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Employees',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 20,
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
                      child: ListTile(
                        leading: const Icon(Icons.shopping_bag_outlined,
                            color: Colors.black),
                        title: Text(
                          'Manage Department',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          )),
                        ),
                      )),
                ];
              },
              onSelected: (value) {
                if (value == 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ManageDepartment(),
                      ));
                }
              },
            )
          ],
        ),
        // to show details of employees
        body: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(15.0),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.4,
                ),
                itemCount: employeeDetail.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (index == 0)
                        ? () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NotCheckIn(),
                                  ));
                            });
                          }
                        : (index == 1)
                            ? () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const CheckIn(),
                                      ));
                                });
                              }
                            : (index == 2)
                                ? () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const Leave(),
                                          ));
                                    });
                                  }
                                : (index == 3)
                                    ? () {
                                        setState(() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Break(),
                                              ));
                                        });
                                      }
                                    : (index == 4)
                                        ? () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const AfterBreak(),
                                                  ));
                                            });
                                          }
                                        : () {
                                            setState(() {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const OverTimeOut(),
                                                  ));
                                            });
                                          },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: employeeDetail[index].color,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: employeeDetail[index].borderColor),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: Text(
                              employeeDetail[index].status,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              )),
                            ),
                          ),
                          SizedBox(
                              width: 200,
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  controller: _controlle1r,
                                  child: Row(
                                    children: employeeDetail[index]
                                        .image
                                        .map((e) => Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(e),
                                                radius: 15,
                                              ),
                                            ))
                                        .toList(),
                                  ))),
                        ],
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: expand.length,
                itemBuilder: (context, ind) {
                  return Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [cls[ind].color!, cls4[ind].color!]),
                            width: 2)),
                    child: ExpansionPanelList(
                      elevation: 0,
                      dividerColor: Colors.black,
                      expansionCallback: (int index, bool isExpanded) {
                        setState(() {
                          expand[ind].isExpanded = !expand[ind].isExpanded;
                        });
                      },
                      expandIconColor: Colors.cyanAccent,
                      animationDuration: const Duration(seconds: 1),
                      children: [
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                expand[ind].header,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          },
                          body: expand[ind].body,
                          isExpanded: expand[ind].isExpanded,
                          canTapOnHeader: true,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
            onPressed: () {
              setState(() {
                bottomSheet();
              });
            },
            backgroundColor: appColor2,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
    );
  }

  //to show bottom sheet
  // to show details of employee
  bottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddDepartment(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.business_center,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Department',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddNewEmployees()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.person_add_alt,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Employees',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}

List<Leaves> breakInData = [
  Leaves(
      name: 'Hendry Adams',
      role: 'Accountant',
      time: '00:41:52',
      notes:
          "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
      leaveType: 'Sick Leave document.pdf'),
  Leaves(
      name: 'Mari Selvam',
      role: 'Flutter Developer',
      time: '00:41:39',
      notes:
          "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
      leaveType: 'Family Emergency document.pdf'),
  Leaves(
      name: 'Muthu',
      role: 'Flutter Developer',
      time: '00:41:54',
      notes:
          "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
      leaveType: 'Sick Leave document.pdf'),
  Leaves(
      name: 'Hari',
      role: 'Flutter Developer',
      time: '00:41:54',
      notes:
          "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
      leaveType: 'Sick Leave document.pdf'),
  Leaves(
      name: 'Sri',
      role: 'Flutter Developer',
      time: '00:41:54',
      notes:
          "Hello I'm not feeling well and need to take 2 days of sick leave.I included my doctor's note for your review.ThankYou for your understanding.",
      leaveType: 'Sick Leave document.pdf'),
];
List<Photos> images = [
  Photos(image: 'assets/Ellipse 55.png'),
  Photos(image: 'assets/p2.jpeg'),
  Photos(image: 'assets/Ellipse 57.png'),
  Photos(image: 'assets/Ellipse 58.png'),
  Photos(image: 'assets/p2.jpeg'),
  Photos(image: 'assets/Ellipse 63.png'),
  Photos(image: 'assets/Ellipse 55.png'),
];

// to show details of employees who works in marketing department
Widget marketing() {
  return Column(
    children: [
      const SizedBox(
        width: 350,
        child: Divider(
          height: 5,
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: breakInData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index].image!),
            ),
            title: Text(
              breakInData[index].name!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Text(
              breakInData[index].role!,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditEmployee(),
                    ));
              },
              child: const Icon(
                Icons.edit_outlined,
                color: Colors.black,
              ),
            ),
          );
        },
      ),
    ],
  );
}

// to show the employeeStatus
employeeStatus() {
  return Column(
    children: [
      const SizedBox(
        width: 300,
        child: Divider(
          height: 5,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
        child: Row(
          children: [
            SimpleCircularProgressBar(
              size: 80,
              progressColors: const [
                Colors.cyan,
                Colors.green,
                Colors.amberAccent,
                Colors.redAccent,
                Colors.purpleAccent
              ],
              backStrokeWidth: 2,
              progressStrokeWidth: 5,
              backColor: Colors.blueGrey,
              animationDuration: 3,
              onGetText: (double value) {
                return Text(
                  textAlign: TextAlign.center,
                  value.toStringAsFixed(0),
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
                );
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.6,
                      child: Checkbox(
                        value: false,
                        onChanged: (value) => value,
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return Colors.green;
                        }),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              const BorderSide(width: 1.0, color: Colors.green),
                        ),
                      ),
                    ),
                    Text(
                      'Permanent (61%) (14)',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.6,
                      child: Checkbox(
                        value: false,
                        onChanged: (value) => value,
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return Colors.orange;
                        }),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) => const BorderSide(
                              width: 1.0, color: Colors.orange),
                        ),
                      ),
                    ),
                    Text(
                      'Contract (19%) (4)',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.6,
                      child: Checkbox(
                        value: false,
                        onChanged: (value) => value,
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return Colors.redAccent;
                        }),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) => const BorderSide(
                              width: 1.0, color: Colors.redAccent),
                        ),
                      ),
                    ),
                    Text(
                      'Intern (12%) (3)',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.6,
                      child: Checkbox(
                        value: false,
                        onChanged: (value) => value,
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return Colors.purpleAccent;
                        }),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) => const BorderSide(
                              width: 1.0, color: Colors.purpleAccent),
                        ),
                      ),
                    ),
                    Text(
                      'Part-Time (8%) (2)',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}

// to show genderDiversity
genderDiversity() {
  return Column(
    children: [
      const SizedBox(
        width: 400,
        child: Divider(
          height: 5,
        ),
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 8, right: 10.0, top: 30, bottom: 30),
        child: Row(
          children: [
            SimpleCircularProgressBar(
              size: 80,
              progressColors: const [
                Colors.cyan,
                Colors.green,
                Colors.amberAccent,
                Colors.redAccent,
                Colors.purpleAccent
              ],
              backColor: Colors.blueGrey,
              backStrokeWidth: 2,
              progressStrokeWidth: 5,
              animationDuration: 3,
              onGetText: (double value) {
                return Text(
                  textAlign: TextAlign.center,
                  value.toStringAsFixed(0),
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  )),
                );
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.6,
                      child: Checkbox(
                        value: false,
                        onChanged: (value) => value,
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return Colors.green;
                        }),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              const BorderSide(width: 1.0, color: Colors.green),
                        ),
                      ),
                    ),
                    Text(
                      'Man (39%) (9)',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.6,
                      child: Checkbox(
                        value: false,
                        onChanged: (value) => value,
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return Colors.orange;
                        }),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) => const BorderSide(
                              width: 1.0, color: Colors.orange),
                        ),
                      ),
                    ),
                    Text(
                      'Women (61%) (14)',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}

// to show expansionPanelList
class ExpandList {
  String header;
  Widget body;
  bool isExpanded = false;
  ExpandList({required this.header, required this.body});
}
