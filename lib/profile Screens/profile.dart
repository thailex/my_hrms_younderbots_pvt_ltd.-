import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';
import 'package:hrms/login%20page/login.dart';
import 'package:hrms/profile%20Screens/changepassword.dart';
import 'package:hrms/profile%20Screens/myprofile.dart';
import 'package:hrms/profile%20Screens/privacy.dart';
import 'package:hrms/profile%20Screens/termsandconditions.dart';
import 'package:hrms/settings/settings.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  List<Profile> profile = [
    Profile(title: 'My Profile', icon: Icons.person),
    Profile(title: 'Change Password', icon: Icons.change_circle_outlined),
    Profile(title: 'Terms & Conditions', icon: Icons.file_open_outlined),
    Profile(title: 'Privacy Policy', icon: Icons.privacy_tip_outlined),
    Profile(title: 'Settings', icon: Icons.settings),
    Profile(title: 'Logout', icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //to show the profile
      body: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage('assets/teamleave.jpeg'),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Mari Selvam',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    )),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Lead Flutter Developer',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  )),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    appColor,
                    appColor2,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Edit Profile',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.8,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: profile.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        (index == 0)
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Myprofile(),
                                ))
                            : (index == 1)
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ChangePassword(),
                                    ))
                                : (index == 2)
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const TermsConditions(),
                                        ))
                                    : (index == 3)
                                        ? Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Privacy(),
                                            ))
                                        : (index == 4)
                                            ? Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Settings(),
                                                ))
                                            : bottomSheet();
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            profile[index].icon,
                            color: (index == 5) ? Colors.red : Colors.black,
                          ),
                        ),
                        title: Text(
                          profile[index].title,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: (index == 5) ? Colors.red : Colors.black,
                          )),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  //to show the profile
  bottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 350,
                child: Divider(
                  height: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30.0),
                child: Text(
                  "Are you sure you want to logout? ",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  width: 350,
                  child: Divider(
                    height: 20,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
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
                            builder: (context) => const Login(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient:
                            const LinearGradient(colors: [appColor, appColor2]),
                      ),
                      child: Text(
                        'Yes,Logout',
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
        });
      },
    );
  }
}
//to show the data profile
class Profile {
  String title;

  IconData icon;
  Profile({required this.title, required this.icon});
}
