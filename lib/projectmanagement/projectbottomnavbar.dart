import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hrms/color.dart';
import 'package:hrms/profile%20Screens/marketing.dart';
import 'package:hrms/profile%20Screens/timeline.dart';

class ProjectManagement extends StatefulWidget {
  const ProjectManagement({super.key});

  @override
  State<ProjectManagement> createState() => _ProjectManagementState();
}

class _ProjectManagementState extends State<ProjectManagement> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List Screens = [
    const Marketing(),
    const TimelineProject(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //     to show bottomNavigationBar of project management
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: _page == 3 ? Colors.grey.shade200 : Colors.white,
        buttonBackgroundColor: appColor,
        color: appColor2,
        key: _bottomNavigationKey,
        items: const <Widget>[
          Icon(Icons.home_outlined, color: Colors.white, size: 30),
          Icon(Icons.date_range_outlined, color: Colors.white, size: 30),
          Icon(Icons.people, color: Colors.white, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    ));
  }
}
