import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaveDetails extends StatefulWidget {
  const LeaveDetails({super.key});

  @override
  State<LeaveDetails> createState() => _LeaveDetailsState();
}

class _LeaveDetailsState extends State<LeaveDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            )),
        title: Text(
          'Leave Details',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
      // to show leave details
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       IconButton(
            //           onPressed: () {
            //             Navigator.pop(context);
            //           },
            //           icon: const Icon(
            //             Icons.arrow_back_ios_new_outlined,
            //             color: Colors.black,
            //           )),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 80.0),
            //         child: Text(
            //           'Leave Details',
            //           style: GoogleFonts.poppins(
            //               textStyle: const TextStyle(
            //             fontSize: 18,
            //             fontWeight: FontWeight.w600,
            //             color: Colors.black,
            //           )),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              height: MediaQuery.of(context).size.height / 1.4,
              margin: const EdgeInsets.all(15),
              child: ListView.builder(
                itemCount: 7,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return leaveDetails(
                    (index == 0)
                        ? 'Title'
                        : (index == 1)
                            ? 'Leave Type'
                            : (index == 2)
                                ? 'Date'
                                : (index == 3)
                                    ? 'Reason'
                                    : (index == 4)
                                        ? 'Applied on'
                                        : (index == 4)
                                            ? 'Contact Number'
                                            : (index == 5)
                                                ? 'Status'
                                                : 'Approved by',
                    (index == 0)
                        ? 'Sick Leave'
                        : (index == 1)
                            ? 'Medical Leave'
                            : (index == 2)
                                ? 'Apr 15,2024 - Apr 18,2024 '
                                : (index == 3)
                                    ? 'I need to take medical leave'
                                    : (index == 4)
                                        ? 'Apr 10,20234'
                                        : (index == 4)
                                            ? '9994554445'
                                            : (index == 5)
                                                ? 'Pending'
                                                : 'Manikandan',
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
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
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
            ),
          ],
        ),
      ),
    ));
  }
  // to show leave details
  leaveDetails(String title, String subtitle) {
    return ListTile(
        title: Text(
          title,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          )),
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ));
  }
}
