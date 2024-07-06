import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/attendance/afterbreak.dart';
import 'package:hrms/attendance/break.dart';
import 'package:hrms/attendance/checkin.dart';
import 'package:hrms/attendance/checkout.dart';
import 'package:hrms/attendance/leave.dart';
import 'package:hrms/attendance/notcheckin.dart';
import 'package:hrms/attendance/overtime.dart';
import 'package:hrms/attendance/overtimeout.dart';
import 'package:hrms/color.dart';
import 'package:hrms/settings/settings.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../Home Pages/chooseapp.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  // to show dropdown items for working hours
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  // to show employee working hours
  final List<String> hours = [
    '34h',
    '35h',
    '36h',
    '37h',
    '38h',
    '39h',
    '40h',
  ];
  // to show the progress of working hours of an employee
  List<Progressbar> progressbar = [
    Progressbar(image: 'assets/Ellipse 63.png', step: 6),
    Progressbar(image: 'assets/p2.jpeg', step: 4),
    Progressbar(image: 'assets/Ellipse 55.png', step: 5),
    Progressbar(image: 'assets/Ellipse 57.png', step: 3),
    Progressbar(image: 'assets/p2.jpeg', step: 2),
    Progressbar(image: 'assets/Ellipse 58.png', step: 6),
    Progressbar(image: 'assets/Ellipse 63.png', step: 5),
    Progressbar(image: 'assets/p2.jpeg', step: 1),
    Progressbar(image: 'assets/Ellipse 55.png', step: 3),
    Progressbar(image: 'assets/Ellipse 57.png', step: 4),
  ];
  // to calculate the performance of an employee
  String? selectedValue;
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  var data1 = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, 0.5, -1.0, -0.5, 1.9, 0.0];
  var data2 = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, 0.5, -1.0, -0.5, 1.9, 0.0];
  var data3 = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];

  List<AttendanceStatus> attendanceStatus = [
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
        status: 'Not Check In yet (5)',
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
        status: 'Check In (7)',
        borderColor: Colors.blue),
    AttendanceStatus(
        color: Colors.deepPurple.shade50,
        image: [
          'assets/Ellipse 63.png',
          'assets/p2.jpeg',
          'assets/Ellipse 55.png',
        ],
        status: 'Leave (3)',
        borderColor: Colors.deepPurpleAccent),
    AttendanceStatus(
        color: Colors.green.shade50,
        image: [
          'assets/Ellipse 58.png',
          'assets/Ellipse 55.png',
          'assets/Ellipse 57.png',
        ],
        status: 'Break (3)',
        borderColor: Colors.greenAccent),
    AttendanceStatus(
        color: Colors.brown.shade50,
        image: [
          'assets/Ellipse 63.png',
          'assets/p2.jpeg',
          'assets/Ellipse 57.png',
        ],
        status: 'After Break (3)',
        borderColor: Colors.brown.shade800),
    AttendanceStatus(
        color: Colors.red.shade50,
        image: [
          'assets/Ellipse 58.png',
          'assets/Ellipse 55.png',
          'assets/Ellipse 57.png',
        ],
        status: 'Check out (3)',
        borderColor: Colors.redAccent),
    AttendanceStatus(
        color: Colors.purple.shade50,
        image: [
          'assets/Ellipse 58.png',
          'assets/Ellipse 55.png',
          'assets/Ellipse 57.png',
        ],
        status: 'Overtime In (3)',
        borderColor: Colors.purpleAccent),
    AttendanceStatus(
        color: Colors.cyan.shade50,
        image: [
          'assets/Ellipse 58.png',
          'assets/Ellipse 55.png',
          'assets/Ellipse 57.png',
        ],
        status: 'Overtime Out (3)',
        borderColor: Colors.blueAccent),
  ];
  // to display color
  List<Colorss> cls1 = [
    Colorss(color: Colors.green),
    Colorss(color: Colors.red),
    Colorss(color: Colors.red),
    Colorss(color: Colors.green),
  ];
  // to display color
  List<Colorsss> cls2 = [
    Colorsss(color: Colors.greenAccent, color1: Colors.greenAccent.shade200),
    Colorsss(color: Colors.red.shade400, color1: Colors.red.shade200),
    Colorsss(color: Colors.red.shade400, color1: Colors.red.shade200),
    Colorsss(color: Colors.greenAccent, color1: Colors.greenAccent.shade200),
  ];
  // to show attendance percentage of an employee
  List<EmployeePercent> percent = [
    EmployeePercent(
      percent: '12.8%',
      type: 'Employee Attendance',
      status: 'Increased vs last month',
      iconData: Icons.person_add_alt_1,
    ),
    EmployeePercent(
      percent: '6.5%',
      type: 'Late Attendance',
      status: 'Decreased vs last month',
      iconData: Icons.person_remove,
    ),
    EmployeePercent(
      percent: '5.9%',
      type: 'Employee on Leave',
      status: 'Decreased vs last month',
      iconData: Icons.file_present,
    ),
    EmployeePercent(
      percent: '4.3%',
      type: 'Overtime Employee ',
      status: 'Increased vs last month',
      iconData: Icons.access_time,
    ),
  ];
  late final ScrollController _controller = ScrollController();
  late final ScrollController _controlle1r = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Attendance',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.settings),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings(),
                ));
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Positioned(
                  right: 6,
                  top: 7,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // to show status of an employee
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
              itemCount: attendanceStatus.length,
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
                                      : (index == 5)
                                          ? () {
                                              setState(() {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const CheckOut(),
                                                    ));
                                              });
                                            }
                                          : (index == 6)
                                              ? () {
                                                  setState(() {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              const OverTime(),
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
                      color: attendanceStatus[index].color,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: attendanceStatus[index].borderColor),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text(
                            attendanceStatus[index].status,
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
                                  children: attendanceStatus[index]
                                      .image
                                      .map((e) => Padding(
                                            padding: const EdgeInsets.all(2.0),
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
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Attendance Performance',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
                  ),
                ],
              ),
            ),
            // to show attendance performance of an employee
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.4,
              child: GridView.builder(
                padding: const EdgeInsets.all(10.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.2,
                ),
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // gradient: LinearGradient(colors: [
                        //   appColor.withOpacity(0.2),
                        //   appColor2.withOpacity(0.1)
                        // ]),
                        // boxShadow: const [
                        //   BoxShadow(
                        //     color: Colors.black,
                        //     blurRadius: 10.0,
                        //   ),
                        // ],
                        border:
                            Border.all(color: Colors.black.withOpacity(0.3))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.height / 40,
                              backgroundColor: Colors.grey,
                              child: Icon(
                                percent[index].iconData,
                                size: MediaQuery.of(context).size.height / 40,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 7,
                              height: MediaQuery.of(context).size.height / 18,
                              child: Sparkline(
                                data: (index == 0)
                                    ? data
                                    : (index == 1)
                                        ? data1
                                        : (index == 2)
                                            ? data2
                                            : data3,
                                useCubicSmoothing: true,
                                cubicSmoothingFactor: 0.2,
                                fillMode: FillMode.below,
                                fillGradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    cls2[index].color!,
                                    cls2[index].color1!
                                  ],
                                ),
                                lineColor: cls1[index].color!,
                              ),
                            ),
                            Text(
                              percent[index].percent!,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: cls1[index].color,
                              )),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                          child: Text(
                            percent[index].type!,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                          ),
                        ),
                        Text(
                          percent[index].status!,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          )),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // to show working hours of an employee
            Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black.withOpacity(0.3))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Working Hours',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2<String>(
                              isExpanded: true,
                              hint: Text(
                                'This week',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                )),
                              ),
                              items: items
                                  .map(
                                      (String item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  8,
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                              buttonStyleData: ButtonStyleData(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 22),
                                height: MediaQuery.of(context).size.height / 25,
                                width: MediaQuery.of(context).size.width / 2.8,
                              ),
                              menuItemStyleData: const MenuItemStyleData(
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: hours
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text(
                              e,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              )),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 1.8,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage(progressbar[index].image!),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    height: 5,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      child: LinearProgressBar(
                                        maxSteps: 7, minHeight: 5,
                                        progressType: LinearProgressBar
                                            .progressTypeLinear, // Use Linear progress
                                        currentStep: progressbar[index].step,
                                        progressColor: appColor2,
                                        backgroundColor: Colors.grey,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
// to show images

class Photos {
  String? image;
  Photos({required this.image});
}
// to show images

class Photos1 {
  String? image;
  Photos1({required this.image});
}
// to show images

class Photos2 {
  String? image;
  Photos2({required this.image});
}
// to show images

class Photos3 {
  String? image;
  Photos3({required this.image});
}
// to show images

class Photos4 {
  String? image;
  Photos4({required this.image});
}
// to show images

class Photos5 {
  String? image;
  Photos5({required this.image});
}
// to show images

class Photos6 {
  String? image;
  Photos6({required this.image});
}
// to show images

class Photos7 {
  String? image;
  Photos7({required this.image});
}

// to show status of an employee
class Status {
  String? title;
  Status({required this.title});
}

class AttendanceStatus {
  List<String> image;
  String status;
  Color color;
  Color borderColor;
  AttendanceStatus(
      {required this.color,
      required this.image,
      required this.status,
      required this.borderColor});
}

// to show attendance percent of an employee
class EmployeePercent {
  String? percent;
  String? type;
  String? status;
  IconData? iconData;
  EmployeePercent(
      {required this.percent,
      required this.type,
      required this.status,
      required this.iconData});
}

// to show progress of an employee
class Progressbar {
  String? image;
  int? step;
  Progressbar({required this.image, required this.step});
}
