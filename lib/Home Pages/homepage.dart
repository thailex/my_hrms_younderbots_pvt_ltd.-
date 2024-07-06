import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hrms/attendance/attendance.dart';
import 'package:hrms/color.dart';
import 'package:hrms/employeesanddepartment/employees.dart';
import 'package:hrms/profile%20Screens/marketing.dart';
import 'package:hrms/profile%20Screens/profile.dart';
import 'homescreencheckin.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // to display navigation screens
  List screens = [
    const HomeIconScreen(),
    const Attendance(),
    const Employee(),
    const Marketing(),
    const MyProfile()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //     to show bottomNavigationBar
      body: Center(
        child: screens.elementAt(_page),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: _page == 3 ? Colors.grey.shade200 : Colors.white,
        buttonBackgroundColor: appColor,
        color: appColor2,
        key: _bottomNavigationKey,
        items: const <Widget>[
          Icon(Icons.home_outlined, color: Colors.white, size: 30),
          Icon(Icons.event_note, color: Colors.white, size: 30),
          Icon(Icons.people, color: Colors.white, size: 30),
          Icon(Icons.business_center, color: Colors.white, size: 30),
          Icon(Icons.person, color: Colors.white, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),

      // BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Padding(
      //         padding: EdgeInsets.only(right: 0),
      //         child: Icon(
      //           Icons.home_outlined,
      //           color: Colors.black,
      //           size: 30,
      //         ),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Padding(
      //         padding: EdgeInsets.only(right: 120),
      //         child: Icon(
      //           Icons.event_note_outlined,
      //           color: Colors.black,
      //           size: 30,
      //         ),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Padding(
      //         padding: EdgeInsets.only(left: 30),
      //         child: Icon(
      //           Icons.beach_access_outlined,
      //           color: Colors.black,
      //           size: 30,
      //         ),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //       label: '',
      //     ),
      //   ],
      // ),
    ));
  }
}
