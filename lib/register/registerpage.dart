import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';
import 'package:hrms/g.dart';
import 'package:hrms/login%20page/login.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  bool passwordVisible1 = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //     to register for login
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage(
                  'assets/login.png',
                ),
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Welcome Back to',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CustomGradient(
                child: Text(
                  'HR Attendee',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Hello there,Login to continue',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                )),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        border: InputBorder.none,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF7F7F7),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6)),
                        hintText: 'Enter First Name',
                        hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.6),
                        )),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black.withOpacity(0.6),
                          size: 20,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 6) {
                          return 'Password is too short';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        border: InputBorder.none,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF7F7F7),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        labelText: 'Last Name',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6)),
                        hintText: 'Enter Last Name',
                        hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.6),
                        )),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black.withOpacity(0.6),
                          size: 20,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 6) {
                          return 'Password is too short';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        border: InputBorder.none,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF7F7F7),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        labelText: 'Email Address',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6)),
                        hintText: 'Enter Email Address',
                        hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.6),
                        )),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black.withOpacity(0.6),
                          size: 20,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 6) {
                          return 'Password is too short';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        border: InputBorder.none,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        )),
                        labelText: 'Enter Password',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6)),
                        hintText: 'Enter Password',
                        hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.6),
                        )),
                        filled: true,
                        fillColor: const Color(0xFFF7F7F7),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black.withOpacity(0.6),
                          size: 20,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                              passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 6) {
                          return 'Password is too short';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      obscureText: passwordVisible1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(15),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        )),
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6)),
                        hintText: 'Confirm Password',
                        hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF000000).withOpacity(0.6),
                        )),
                        filled: true,
                        fillColor: const Color(0xFFF7F7F7),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black.withOpacity(0.6),
                          size: 20,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                              passwordVisible1
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black),
                          onPressed: () {
                            setState(() {
                              passwordVisible1 = !passwordVisible1;
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 6) {
                          return 'Password is too short';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
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
                  checkColor: Colors.white,
                  side: MaterialStateBorderSide.resolveWith((states) =>
                      const BorderSide(width: 2, color: Colors.blue)),
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    return (isChecked) ? Colors.blue : Colors.white;
                  }),
                ),
                RichText(
                  text: TextSpan(
                      text: 'I agree to the',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black.withOpacity(0.7)),
                      children: [
                        const TextSpan(
                          text: ' Terms & conditions & privacy policy\n',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: appColor2),
                        ),
                        TextSpan(
                          text: 'set out by this site',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showDialogBox();
                  });
                },
                child: Container(
                  width: 380,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [
                      appColor,
                      appColor2,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: Center(
                    child: Text(
                      'Register',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ));
                  },
                  child: RichText(
                    text: const TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' Login',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: appColor2),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
  // to showDialogBox for register
  showDialogBox() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Image(image: AssetImage('assets/tickgif.gif')),
              CustomGradient(
                child: Text(
                  'Congratulations',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Your account is ready to use',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ));
                  });
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          colors: [
                            appColor,
                            appColor2,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Center(
                    child: Text(
                      'Back to Home',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
