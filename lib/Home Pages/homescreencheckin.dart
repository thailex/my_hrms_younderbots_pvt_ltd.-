import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_center_date_picker/datepicker_controller.dart';
import 'package:horizontal_center_date_picker/horizontal_date_picker.dart';
import 'package:hrms/Notification/notificationalert.dart';
import 'package:hrms/color.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomeIconScreen extends StatefulWidget {
  const HomeIconScreen({super.key});

  @override
  State<HomeIconScreen> createState() => _HomeIconScreenState();
}

class _HomeIconScreenState extends State<HomeIconScreen> {
  bool isChecked = false;
  final DatePickerController _datePickerController = DatePickerController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // to show attendance activities of an employees
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: ListTile(
                  leading: ClipOval(
                    child: CachedNetworkImage(
                        alignment: Alignment.center,
                        height: 90,
                        width: 60,
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://cdn.pixabay.com/photo/2023/04/28/23/32/ai-generated-7957457_640.png"
                        // "assets/svg/noImage.png",
                        ),
                  ),
                  // CircleAvatar(
                  //   maxRadius: 40,
                  //   backgroundColor: Colors.white,
                  //   backgroundImage: AssetImage(
                  //     'assets/profile.jpg',
                  //   ),
                  // ),
                  title: const Text(
                    'Mari Selvam',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  subtitle: const Text(
                    'Lead Flutter Developer',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationAlert(),
                            ));
                      });
                    },
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        const Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                        Positioned(
                          right: 8,
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
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: HorizontalDatePickerWidget(
                    disabledColor: Colors.grey.shade100,
                    normalColor: Colors.grey.shade300,
                    selectedColor: appColor.withOpacity(0.8),
                    width: 80,
                    height: 80,
                    locale: 'en_US',
                    startDate: DateTime.now(),
                    endDate: DateTime.now().add(const Duration(days: 15)),
                    selectedDate: DateTime.now(),
                    widgetWidth: MediaQuery.of(context).size.width,
                    datePickerController: _datePickerController,
                    monthFontSize: 18,
                    dayFontSize: 16,
                    onValueSelected: (date) {},
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Today Attendance',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
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
                    return attendance(
                        (index == 0)
                            ? Icons.arrow_back
                            : (index == 1)
                                ? Icons.arrow_forward
                                : (index == 2)
                                    ? Icons.free_breakfast_outlined
                                    : Icons.date_range_rounded,
                        (index == 0)
                            ? 'Check In'
                            : (index == 1)
                                ? 'Check Out'
                                : (index == 2)
                                    ? 'Break Time'
                                    : 'Total Days',
                        (index == 0)
                            ? '10:30 AM'
                            : (index == 1)
                                ? '07:00 PM'
                                : (index == 2)
                                    ? '00:30 min'
                                    : '28',
                        (index == 0)
                            ? 'On Time'
                            : (index == 1)
                                ? 'Go Home'
                                : (index == 2)
                                    ? 'Average Time 30 min'
                                    : 'Working days',
                        (index == 0)
                            ? appColor2
                            : (index == 1)
                                ? appColor2
                                : (index == 2)
                                    ? appColor2
                                    : appColor2);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Activity',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    // CustomGradient(
                    //   child: Text(
                    //     'View All',
                    //     style: TextStyle(
                    //         fontSize: 12,
                    //         fontWeight: FontWeight.w700,
                    //         color: Colors.blue),
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return activity(
                      (index == 0) ? 'Check in' : 'Break Time',
                      (index == 0) ? 'April 8,2024' : 'April 10,2024',
                      (index == 0) ? '10:00 AM' : '11:00 AM',
                      (index == 0)
                          ? Icons.arrow_back
                          : Icons.free_breakfast_outlined,
                    );
                  },
                ),
              )
            ],
          ),
        ),
        // to show checkIn and checkOut slide bar
        persistentFooterButtons: [
          isChecked == false
              ? Container(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: SlideAction(
                    sliderButtonIconPadding: 8,
                    height: 55,
                    sliderButtonIcon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                    innerColor: Colors.white,
                    outerColor: Colors.green.shade400,
                    borderRadius: 10,
                    text: 'Swipe to Check In ',
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                    onSubmit: () {
                      setState(() {
                        isChecked = true;
                      });
                      return null;
                    },
                  ),
                )
              : Container(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: SlideAction(
                    sliderButtonIconPadding: 8,
                    height: 55,
                    sliderButtonIcon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.redAccent,
                    ),
                    innerColor: Colors.white,
                    outerColor: Colors.redAccent,
                    borderRadius: 10,
                    text: 'Swipe to Check out ',
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                    onSubmit: () {
                      setState(() {
                        isChecked = false;
                      });
                      return null;
                    },
                  ),
                ),
        ],
      ),
    );
  }
  // to show current attendance of an employee
  attendance(IconData icon, String title, String time, String status, Color color) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            appColor.withOpacity(0.8),
            appColor2.withOpacity(0.8),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 22,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Text(
                  time,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Text(
            status,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
    );
  }
  // to show activities of an employee
  activity(String status, String statusTime, String onTime, IconData icon) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 2.0,
            ),
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  icon,
                  color: Colors.blue,
                  size: 22,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      status,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        statusTime,
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      onTime,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  const Text(
                    'On Time',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
