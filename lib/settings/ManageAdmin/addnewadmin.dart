import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/settings/ManageAdmin/validatenewadmin.dart';

import '../../attendance/attendance.dart';
import '../../color.dart';

class AddNewAdmin extends StatefulWidget {
  const AddNewAdmin({super.key});

  @override
  State<AddNewAdmin> createState() => _AddNewAdminState();
}

class _AddNewAdminState extends State<AddNewAdmin> {
  String? selectedValue;
  bool selectAdmin = false;
  // to show list of workPattern
  List<String> workPattern = [
    'Normal Work',
    'Shift Work',
    'Remote Work',
    'Internship'
  ];
  // to show list of addAdminMarketing
  List<AddAdmin> addAdminMarketing = [
    AddAdmin(
      name: 'Hendry Adams',
      role: 'Marketing Manager',
    ),
    AddAdmin(
      name: 'Mari Selvam',
      role: 'Marketing Manager',
    ),
    AddAdmin(
      name: 'Muthu',
      role: 'Marketing Manager',
    ),
    AddAdmin(
      name: 'Hari',
      role: 'Marketing Manager',
    ),
    AddAdmin(
      name: 'Sri',
      role: 'Marketing Manager',
    ),
  ];
  // to show list of addAdminFlutter
  List<AddAdmin> addAdminFlutter = [
    AddAdmin(
      name: 'Hendry Adams',
      role: 'Flutter Developer',
    ),
    AddAdmin(
      name: 'Mari Selvam',
      role: 'Flutter Developer',
    ),
    AddAdmin(
      name: 'Muthu',
      role: 'Flutter Developer',
    ),
    AddAdmin(
      name: 'Hari',
      role: 'Flutter Developer',
    ),
    AddAdmin(
      name: 'Sri',
      role: 'Flutter Developer',
    ),
  ];
  // to show list of addAdminFinance
  List<AddAdmin> addAdminFinance = [
    AddAdmin(
      name: 'Hendry Adams',
      role: 'Finance Manager',
    ),
    AddAdmin(
      name: 'Mari Selvam',
      role: 'Finance Manager',
    ),
    AddAdmin(
      name: 'Muthu',
      role: 'Finance Manager',
    ),
    AddAdmin(
      name: 'Hari',
      role: 'Finance Manager',
    ),
    AddAdmin(
      name: 'Sri',
      role: 'Finance Manager',
    ),
  ];
  // to show list of addAdminHumanResources
  List<AddAdmin> addAdminHumanResources = [
    AddAdmin(
      name: 'Hendry Adams',
      role: 'HR Administrative',
    ),
    AddAdmin(
      name: 'Mari Selvam',
      role: 'HR Administrative',
    ),
    AddAdmin(
      name: 'Muthu',
      role: 'HR Administrative',
    ),
    AddAdmin(
      name: 'Hari',
      role: 'HR Administrative',
    ),
    AddAdmin(
      name: 'Sri',
      role: 'HR Administrative',
    ),
  ];
  // to show list of addAdminBusiness
  List<AddAdmin> addAdminBusiness = [
    AddAdmin(
      name: 'Hendry Adams',
      role: 'Business Analyst',
    ),
    AddAdmin(
      name: 'Mari Selvam',
      role: 'Business Analyst',
    ),
    AddAdmin(
      name: 'Muthu',
      role: 'Business Analyst',
    ),
    AddAdmin(
      name: 'Hari',
      role: 'Business Analyst',
    ),
    AddAdmin(
      name: 'Sri',
      role: 'Business Analyst',
    ),
  ];
  // to show list of addAdminProduct
  List<AddAdmin> addAdminProduct = [
    AddAdmin(
      name: 'Hendry Adams',
      role: 'Product Manager',
    ),
    AddAdmin(
      name: 'Mari Selvam',
      role: 'Product Manager',
    ),
    AddAdmin(
      name: 'Muthu',
      role: 'Product Manager',
    ),
    AddAdmin(
      name: 'Hari',
      role: 'Product Manager',
    ),
    AddAdmin(
      name: 'Sri',
      role: 'Product Manager',
    ),
  ];
  List<Photos> images = [
    Photos(image: 'assets/Ellipse 63.png'),
    Photos(image: 'assets/p2.jpeg'),
    Photos(image: 'assets/Ellipse 55.png'),
    Photos(image: 'assets/Ellipse 57.png'),
    Photos(image: 'assets/p2.jpeg'),
    Photos(image: 'assets/Ellipse 58.png'),
    Photos(image: 'assets/Ellipse 63.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Admin',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
      // to add new admin
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Human Resources',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            humanResources(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Flutter',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            flutter(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Finance',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            finance(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Marketing',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            marketing(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Business',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            business(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Text(
                'Product',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                )),
              ),
            ),
            product(),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 15, bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.cyan.shade50),
                child: Text(
                  'Cancel',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: appColor2,
                  )),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ValidateAdmin(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [appColor, appColor2]),
                ),
                child: Text(
                  'Continue',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
  // to show list of marketing

  marketing() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: addAdminMarketing.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                addAdminMarketing[index].selectAdmin =
                    !addAdminMarketing[index].selectAdmin;
              });
            },
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index].image!),
                ),
                title: Text(
                  addAdminMarketing[index].name,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                subtitle: Text(
                  addAdminMarketing[index].role,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                trailing: (addAdminMarketing[index].selectAdmin)
                    ? const Icon(
                        Icons.check_circle,
                        color: appColor2,
                      )
                    : const Icon(Icons.add, color: Colors.white)),
          );
        },
      ),
    );
  }
  // to show list of flutter

  flutter() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: addAdminFlutter.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                addAdminFlutter[index].selectAdmin =
                    !addAdminFlutter[index].selectAdmin;
              });
            },
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index].image!),
                ),
                title: Text(
                  addAdminFlutter[index].name,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                subtitle: Text(
                  addAdminFlutter[index].role,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                trailing: (addAdminFlutter[index].selectAdmin)
                    ? const Icon(
                        Icons.check_circle,
                        color: appColor2,
                      )
                    : const Icon(Icons.add, color: Colors.white)),
          );
        },
      ),
    );
  }
  // to show list of finance

  finance() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: addAdminFinance.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                addAdminFinance[index].selectAdmin =
                    !addAdminFinance[index].selectAdmin;
              });
            },
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index].image!),
                ),
                title: Text(
                  addAdminFinance[index].name,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                subtitle: Text(
                  addAdminFinance[index].role,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
                trailing: (addAdminFinance[index].selectAdmin)
                    ? const Icon(
                        Icons.check_circle,
                        color: appColor2,
                      )
                    : const Icon(Icons.add, color: Colors.white)),
          );
        },
      ),
    );
  }
  // to show list of humanResources

  humanResources() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: addAdminHumanResources.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                addAdminHumanResources[index].selectAdmin =
                    !addAdminHumanResources[index].selectAdmin;
              });
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index].image!),
              ),
              title: Text(
                addAdminHumanResources[index].name,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              trailing: (addAdminHumanResources[index].selectAdmin)
                  ? const Icon(
                      Icons.check_circle,
                      color: appColor2,
                    )
                  : const Icon(Icons.add, color: Colors.white),
              subtitle: Text(
                addAdminHumanResources[index].role,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  // to show list of business
  business() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: addAdminBusiness.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                addAdminBusiness[index].selectAdmin =
                    !addAdminBusiness[index].selectAdmin;
              });
            },
            child: ListTile(
              trailing: (addAdminBusiness[index].selectAdmin)
                  ? const Icon(
                      Icons.check_circle,
                      color: appColor2,
                    )
                  : const Icon(Icons.add, color: Colors.white),
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index].image!),
              ),
              title: Text(
                addAdminBusiness[index].name,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Text(
                addAdminBusiness[index].role,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  // to show list of addAdminProduct
  product() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: addAdminProduct.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                addAdminProduct[index].selectAdmin =
                    !addAdminProduct[index].selectAdmin;
              });
            },
            child: ListTile(
              trailing: (addAdminProduct[index].selectAdmin)
                  ? const Icon(
                      Icons.check_circle,
                      color: appColor2,
                    )
                  : const Icon(Icons.add, color: Colors.white),
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index].image!),
              ),
              title: Text(
                addAdminProduct[index].name,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Text(
                addAdminProduct[index].role,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
// to show data of add new admin
class AddAdmin {
  String name;
  String role;

  bool selectAdmin = false;
  AddAdmin({required this.role, required this.name});
}
