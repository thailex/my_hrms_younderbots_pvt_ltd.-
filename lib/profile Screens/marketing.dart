import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';
import 'package:hrms/profile%20Screens/mem.dart';
import 'package:hrms/profile%20Screens/projectlist.dart';
import 'package:hrms/profile%20Screens/timeline.dart';

class Marketing extends StatefulWidget {
  const Marketing({super.key});

  @override
  State<Marketing> createState() => _MarketingState();
}

class _MarketingState extends State<Marketing> {
  List<dynamic> project = [
    Project(
      projectName: 'Fintech app',
      hasTag: '#UI Design',
      projectDate: 'Sep 17 - 19',
      projectStatus: 'Asap',
    ),
    Project(
      projectName: 'Brand Guide',
      hasTag: '#Graphic Design',
      projectDate: 'Sep 18 - 20',
      projectStatus: 'Medium',
    ),
    Project(
      projectName: 'Kick off Meeting',
      hasTag: '#projectmanagement',
      projectDate: 'Sep 21 - 22',
      projectStatus: 'Low',
    )
  ];
  List<Colorss> cls = [
    Colorss(color: Colors.lightGreen.shade50),
    Colorss(color: Colors.yellow.shade50),
    Colorss(color: Colors.deepPurple.shade50),
  ];
  List<dynamic> attendeesList = [
    Member(img: 'assets/Ellipse 63.png'),
    Member(img: 'assets/Ellipse 57.png'),
    Member(img: 'assets/Ellipse 58.png'),
  ];
  bool isPressed = true;
  bool isPressed1 = false;
  bool isPressed2 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Project',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )),
            ),
            centerTitle: true,
          ),
          // to show project status
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 15),
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
                              left: 25, right: 25, top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    isPressed ? appColor : Colors.white,
                                    isPressed ? appColor2 : Colors.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color:
                                      isPressed ? Colors.white : Colors.black)),
                          child: Center(
                            child: Text(
                              'To do',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
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
                              left: 25, right: 25, top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    isPressed1 ? appColor : Colors.white,
                                    isPressed1 ? appColor2 : Colors.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: isPressed1
                                      ? Colors.white
                                      : Colors.black)),
                          child: Center(
                            child: Text(
                              'In Process',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
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
                              left: 25, right: 25, top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    isPressed2 ? appColor : Colors.white,
                                    isPressed2 ? appColor2 : Colors.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: isPressed2
                                      ? Colors.white
                                      : Colors.black)),
                          child: Center(
                            child: Text(
                              'Done',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: isPressed2 ? Colors.white : Colors.black,
                              )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TimelineProject(),
                                ));
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: cls[index].color,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    project[index].projectName,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                    )),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 2, right: 5, left: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Text(
                                      project[index].projectStatus,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      )),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              Text(
                                project[index].hasTag,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.access_time_filled_outlined,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      Text(
                                        project[index].projectDate,
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Container(
                                        height: 80,
                                        width: attendeesList.length * 33,
                                        padding: const EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Stack(
                                          children: [
                                            for (var i = 0;
                                                i < attendeesList.length;
                                                i++)
                                              Positioned(
                                                  left: (i * (1 - .3) * 40)
                                                      .toDouble(),
                                                  top: 0,
                                                  child: CircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Colors.black,
                                                    backgroundImage: AssetImage(
                                                        attendeesList[i].img),
                                                  )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
//to show the linear progress indicator
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  double _progress = 0.0;

  void _updateProgress() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progress += 0.2;
        if (_progress.toStringAsFixed(1) == '1.0') {
          t.cancel();
          return;
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _updateProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LinearProgressIndicator(
        value: _progress,
        backgroundColor: Colors.grey[300],
        valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    );
  }
}
