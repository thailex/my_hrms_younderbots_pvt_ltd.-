import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';
import 'package:hrms/g.dart';
import 'package:hrms/login%20page/facid.dart';
import 'package:hrms/login%20page/forgetpassword.dart';
import 'package:hrms/login%20page/qrcode.dart';

import '../Home Pages/homepage.dart';
import '../register/registerpage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // to login to the application
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15.0),
                child: const CustomGradient(
                  child: Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                      'assets/yblogo.png',
                    ),
                    height: 70,
                  ),
                ),
              ),
              Text(
                'Welcome Back to',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )),
              ),
              CustomGradient(
                child: Text(
                  'HR Attendee',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  )),
                ),
              ),
              Text(
                'Hello there,Login to continue',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        controller: _controller,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(15),
                          border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: appColor2,
                          )),
                          hintText: 'Email',
                          hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF000000),
                          )),
                          filled: true,
                          fillColor: const Color(0xFFF7F7F7),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color(0XFFC0C0C0),
                            size: 20,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        obscureText: passwordVisible,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(15),
                          border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: appColor2,
                          )),
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF000000),
                          )),
                          filled: true,
                          fillColor: const Color(0xFFF7F7F7),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0XFFC0C0C0),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgetPass(),
                            ));
                      },
                      child: CustomGradient(
                        child: Text(
                          'Forget Password?',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue,
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
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
                        'Log in',
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
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Or Continue with ',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    )),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Container(
              //     height: 50,
              //     decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(5),
              //         border: Border.all(color: Colors.black.withOpacity(0.1))),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         const Image(
              //           image: AssetImage('assets/google logo.png'),
              //           height: 20,
              //         ),
              //         const SizedBox(
              //           width: 10,
              //         ),
              //         Text(
              //           'Google',
              //           style: GoogleFonts.poppins(
              //               textStyle: const TextStyle(
              //             fontSize: 22,
              //             fontWeight: FontWeight.w700,
              //             color: Colors.black,
              //           )),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // GestureDetector(
              //   child: Container(
              //     padding: const EdgeInsets.all(15),
              //     margin: const EdgeInsets.all(10),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       gradient: const LinearGradient(colors: [
              //         appColor,
              //         appColor2,
              //       ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              //     ),
              //     child: Column(
              //       children: [
              //         const SizedBox(
              //           height: 15,
              //         ),
              //         Image.asset(
              //           'assets/faceid.png',
              //           color: Colors.white,
              //           scale: 2,
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         Text(
              //           'Sign in with Face ID',
              //           style: GoogleFonts.poppins(
              //               textStyle: const TextStyle(
              //             fontSize: 15,
              //             fontWeight: FontWeight.w700,
              //             color: Colors.white,
              //           )),
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         Text(
              //           'Look directly at your front\n    camera to use Face ID',
              //           style: GoogleFonts.poppins(
              //               textStyle: const TextStyle(
              //             fontSize: 15,
              //             fontWeight: FontWeight.w900,
              //             color: Colors.grey,
              //           )),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FaceID(),
                            ));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/faceid.png',
                            color: Colors.black,
                            scale: 2,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            'Face id',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: appColor2,
                            )),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const QrScanner(),
                            ));
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/qrcode1.png',
                            scale: 17,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            'QR Scanner',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: appColor2,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegistrationPage(),
                          ));
                    },
                    child: RichText(
                      text: const TextSpan(
                          text: "Didn't have an account?",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: '  Register',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: appColor),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
