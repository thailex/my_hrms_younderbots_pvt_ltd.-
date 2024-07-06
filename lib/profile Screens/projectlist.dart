import 'dart:ui';

class Project {
  String? projectName;
  String? hasTag;
  String? projectDate;
  String? projectStatus;

  Project({
    required this.projectName,
    required this.hasTag,
    required this.projectDate,
    required this.projectStatus,
  });
}

class Colorss {
  Color? color;

  Colorss({required this.color});
}

class TimelineList {
  String? work;
  String? title;
  String? time;
  String duration;

  TimelineList(
      {required this.title,
      required this.time,
      required this.work,
      required this.duration});
}

class Time {}
