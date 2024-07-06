import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:horizontal_center_date_picker/datepicker_controller.dart';
import 'package:horizontal_center_date_picker/horizontal_date_picker.dart';
import 'package:hrms/color.dart';
import 'package:hrms/profile%20Screens/projectlist.dart';
import 'package:timelines/timelines.dart';

class TimelineProject extends StatefulWidget {
  const TimelineProject({super.key});

  @override
  State<TimelineProject> createState() => _TimelineProjectState();
}

class _TimelineProjectState extends State<TimelineProject> {
  List<TimelineList> contentList = [
    TimelineList(
        title: 'Everyday meeting',
        time: '10:00 am',
        work: 'Stand up',
        duration: '30 mins'),
    TimelineList(
        title: 'Fintech app',
        time: '10:30 am',
        work: 'UI Design',
        duration: '30 mins'),
    TimelineList(
        title: 'travel app',
        time: '11:30 am',
        work: 'Logo Design',
        duration: '30 mins'),
    TimelineList(
        title: 'Fintech app',
        time: '1:00 pm',
        work: 'Kick off',
        duration: '30 mins'),
    TimelineList(
        title: 'Healthy app',
        time: '3:00 pm',
        work: 'UI Design',
        duration: '30 mins'),
    TimelineList(
        title: 'Healthy app',
        time: '5:00 pm',
        work: 'UI Design',
        duration: '30 mins'),
  ];
  List<Colorss> cls = [
    Colorss(color: Colors.deepPurple.shade100),
    Colorss(color: Colors.green.shade100),
    Colorss(color: Colors.yellow.shade100),
    Colorss(color: Colors.deepPurple.shade100),
    Colorss(color: Colors.yellow.shade100),
    Colorss(color: Colors.green.shade100),
  ];
  final DatePickerController _datePickerController = DatePickerController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Timeline',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
      // to show the timeline of the project
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: HorizontalDatePickerWidget(
                    normalColor: Colors.grey.shade300,
                    disabledColor: Colors.grey.shade100,
                    selectedColor: appColor.withOpacity(0.8),
                    width: 80,
                    height: 80,
                    locale: 'en_US',
                    startDate: DateTime.now(),
                    endDate: DateTime.now().add(const Duration(days: 15)),
                    selectedDate: DateTime.now(),
                    widgetWidth: MediaQuery.of(context).size.width,
                    datePickerController: _datePickerController,
                    monthFontSize: 20,
                    dayFontSize: 18,
                    onValueSelected: (date) {}),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: FixedTimeline.tileBuilder(
                theme: TimelineTheme.of(context).copyWith(
                  nodePosition: 0.28,
                ),
                mainAxisSize: MainAxisSize.max,
                builder: TimelineTileBuilder.connected(
                  itemCount: contentList.length,
                  connectionDirection: ConnectionDirection.before,
                  oppositeContentsBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      contentList[index].time!,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  connectorBuilder: (context, index, type) {
                    return const SolidLineConnector(
                      indent: 10,
                      color: Colors.black,
                    );
                  },
                  indicatorBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment
                          .start, // Align indicators to the left
                      children: [
                        if (index == 0) ...{
                          const OutlinedDotIndicator(
                            size: 20,
                            borderWidth: 4.0,
                            color: Colors.black,
                          ),
                        } else if (index == 1) ...{
                          const DotIndicator(
                            size: 18,
                            color: Colors.black54,
                          ),
                        } else if (index == 2) ...{
                          const DotIndicator(
                            size: 16,
                            color: Colors.grey,
                          ),
                        } else if (index == 3) ...{
                          DotIndicator(
                            size: 14,
                            color: Colors.grey[400],
                          ),
                        } else if (index == 4) ...{
                          DotIndicator(
                            size: 14,
                            color: Colors.grey[400],
                          ),
                        } else ...{
                          DotIndicator(
                            size: 12,
                            color: Colors.grey[400],
                          ),
                        }
                      ],
                    );
                  },
                  itemExtent: 130.0,
                  contentsBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: cls[index].color,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // Align to the start
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  contentList[index].work!,
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.timer,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    contentList[index].duration,
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${contentList[index].title}',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
