import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';
import 'package:hrms/g.dart';
import 'package:hrms/leavelist%20screen/applyleave.dart';
import 'package:hrms/leavelist%20screen/leavedetails.dart';
import 'package:hrms/leavelist%20screen/upcominglist.dart';

class AllLeave extends StatefulWidget {
  const AllLeave({super.key});

  @override
  State<AllLeave> createState() => _AllLeaveState();
}

class _AllLeaveState extends State<AllLeave> {
  bool isPressed = true;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isApply = true;
  bool isReset = false;
  bool isChecked = false;
  bool ischeckUnapprove = false;
  bool ischeckedPending = false;
  bool isSick = false;
  bool isPlanned = false;
  bool isHoliday = false;
  bool hint = false;
  final List<String> items = [
    'Mani',
    'Mari',
    'Selva m',
    'Hari',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Leaves',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.add_box_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ApplyLeave(),
                                ));
                          },
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.filter_alt_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            bottomSheet();
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height / 2.8,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.4,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return box(
                        (index == 0)
                            ? 'Leave\nBalance'
                            : (index == 1)
                                ? 'Leave\nApproved'
                                : (index == 2)
                                    ? 'Leave\nPending'
                                    : 'Leave\nCancelled',
                        (index == 0)
                            ? Colors.blue.shade50
                            : (index == 1)
                                ? Colors.green.shade50
                                : (index == 2)
                                    ? Colors.yellow.shade50
                                    : Colors.red.shade50,
                        (index == 0)
                            ? '20'
                            : (index == 1)
                                ? '2'
                                : (index == 2)
                                    ? '4'
                                    : '10',
                        (index == 0)
                            ? Colors.blue
                            : (index == 1)
                                ? Colors.green
                                : (index == 2)
                                    ? Colors.yellow.shade700
                                    : Colors.pinkAccent,
                        (index == 0)
                            ? Colors.purple
                            : (index == 1)
                                ? Colors.green
                                : (index == 3)
                                    ? Colors.pink
                                    : Colors.pinkAccent);
                  },
                ),
              ),
              Row(
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
                          left: 25, right: 25, top: 10, bottom: 10),
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
                          'Upcoming',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 15,
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
                          left: 25, right: 25, top: 10, bottom: 10),
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
                          'Past',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 15,
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
                          left: 25, right: 25, top: 10, bottom: 10),
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
                          'Team Leave',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: isPressed2 ? Colors.white : Colors.black,
                          )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              if (isPressed == true) upComing(),
              if (isPressed1 == true) upComing(),
              if (isPressed2 == true) teamLeave(),
            ],
          ),
        ),
      ),
    );
  }

  box(String text, Color color, String subtext, Color borderColor,
      Color textcolor) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
          ),
          Text(
            subtext,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: textcolor,
            )),
          ),
        ],
      ),
    );
  }
  // to show upcoming leaves
  upComing() {
    return Container(
      height: 500,
      decoration: const BoxDecoration(),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return listView(
              (index == 0)
                  ? 'Apr 15,2023 - Apr 18,2023'
                  : 'Mar 15,2023 - Mar 18,2023',
              (index == 0) ? 'Approved' : 'Rejected',
              (index == 0) ? '31 Days' : '30 Days',
              (index == 0) ? '20' : '8',
              (index == 0) ? 'Mari Selvam' : 'Mani Kandan');
        },
      ),
    );
  }
  // to show upcoming leaves

  List<Upcoming> upcomingLeave = [
    Upcoming(
        date: 'Apr 15,2024',
        status: 'Approved',
        approvedBy: 'MariSelvam',
        applyDays: '31',
        leaveBalance: '21'),
    Upcoming(
        date: 'Apr 16,2024',
        status: 'Rejected',
        approvedBy: 'ManiKandan',
        applyDays: '30',
        leaveBalance: '20'),
  ];
  // to show list of upcoming leaves

  listView(String date, String status, String applyDays, String leaveBalance,
      String approvedBy) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 4.0,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      status,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color:
                            (status == 'Approved') ? Colors.green : Colors.red,
                      )),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                date,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Apply Days',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 55,
                      child: Text(
                        applyDays,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Leave Balance',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 55,
                      child: Text(
                        leaveBalance,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Approved By',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 120,
                      child: Text(
                        approvedBy,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  // to show the list of teamLeaves
  teamLeaveList(String name, String date) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LeaveDetails(),
            ));
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 4.0,
                ),
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 20,
                        top: 10,
                      ),
                      child: CircleAvatar(
                        maxRadius: 30,
                        backgroundImage: AssetImage('assets/teamleave.jpeg'),
                      )
                      // ClipOval(
                      //   child: CachedNetworkImage(
                      //       alignment: Alignment.center,
                      //       height: 60,
                      //       width: 60,
                      //       fit: BoxFit.cover,
                      //       imageUrl:
                      //           "https://cdn.pixabay.com/photo/2023/04/28/23/32/ai-generated-7957457_640.png"
                      //       // "assets/svg/noImage.png",
                      //       ),
                      // ),
                      ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 120,
                        child: Text(
                          name,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          date,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.highlight_remove_outlined,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Reject',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ApplyLeave(),
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.check_circle_outline_rounded,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Accept',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
  // to show the teamLeaves
  teamLeave() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 16,
        itemBuilder: (context, index) {
          return teamLeaveList(
            (index == 0)
                ? 'Mari Selvam'
                : (index == 1)
                    ? 'Mani kandan'
                    : 'Mani',
            (index == 0)
                ? 'Apr 15,2024-Apr 18,2024'
                : (index == 1)
                    ? 'Apr 18,2024-Apr 19,2024'
                    : 'Apr 15,2024-Apr 18,2024',
          );
        },
      ),
    );
  }
  // to filter leaves
  // to show bottom sheet
  bottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Filter',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                            isReset = false;
                            isApply = false;
                            isChecked = false;
                            ischeckUnapprove = false;
                            ischeckedPending = false;
                            isSick = false;
                            isPlanned = false;
                            isHoliday = false;
                            selectedValue = null;
                          });
                        },
                        icon: const Icon(
                          Icons.highlight_remove_outlined,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Status',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (isChecked) {
                              return Colors.blue;
                            }
                            return Colors.white;
                          }),
                          checkColor: Colors.white,
                        ),
                        Text(
                          'Approved',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: ischeckUnapprove,
                          onChanged: (value) {
                            setState(() {
                              ischeckUnapprove = value!;
                            });
                          },
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (ischeckUnapprove) {
                              return Colors.blue;
                            }
                            return Colors.white;
                          }),
                          checkColor: Colors.white,
                        ),
                        Text(
                          'Unapproved',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: ischeckedPending,
                          onChanged: (value) {
                            setState(() {
                              ischeckedPending = value!;
                            });
                          },
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (ischeckedPending) {
                              return Colors.blue;
                            }
                            return Colors.white;
                          }),
                          checkColor: Colors.white,
                        ),
                        Text(
                          'Pending',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Leave Type',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        )),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: isSick,
                          onChanged: (value) {
                            setState(() {
                              isSick = value!;
                            });
                          },
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (isSick) {
                              return Colors.blue;
                            }
                            return Colors.white;
                          }),
                          checkColor: Colors.white,
                        ),
                        Text(
                          'Sick Leave',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: isPlanned,
                          onChanged: (value) {
                            setState(() {
                              isPlanned = value!;
                            });
                          },
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (isPlanned) {
                              return Colors.blue;
                            }
                            return Colors.white;
                          }),
                          checkColor: Colors.white,
                        ),
                        Text(
                          'Planned Leave',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: isHoliday,
                          onChanged: (value) {
                            setState(() {
                              isHoliday = value!;
                            });
                          },
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (isHoliday) {
                              return Colors.blue;
                            }
                            return Colors.white;
                          }),
                          checkColor: Colors.white,
                        ),
                        Text(
                          'Holiday Leave',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                  child: Text(
                    'Team Members',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    )),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: 13, right: 15, bottom: 20),
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: appColor2)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomGradient(
                            child: Text(
                              selectedValue == null
                                  ? 'Select Team Member'
                                  : 'Select Team Member',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      barrierLabel: selectedValue,
                      items: items
                          .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
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
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        width: 140,
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isReset = true;
                          isApply = false;
                          isChecked = false;
                          ischeckUnapprove = false;
                          ischeckedPending = false;
                          isSick = false;
                          isPlanned = false;
                          isHoliday = false;
                          selectedValue = null;
                        });
                      },
                      child: Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 70, right: 70, top: 15, bottom: 15),
                          decoration: BoxDecoration(
                            color: isReset ? Colors.blue : Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              'Reset',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: isReset ? Colors.white : Colors.black,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isApply = true;
                          isReset = false;
                          Navigator.pop(context);
                        });
                      },
                      child: Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 70, right: 70, top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              color: isApply ? Colors.blue : Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                              gradient: const LinearGradient(
                                  colors: [
                                    appColor,
                                    appColor2,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          child: Center(
                            child: Text(
                              'Apply',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: isApply ? Colors.white : Colors.black,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          );
        });
      },
    );
  }
}
