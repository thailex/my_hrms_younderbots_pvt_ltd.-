import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  bool passwordVisible = false;
  bool passwordVisible1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Password',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
      // to change password
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: _controller,
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blue,
                      )),
                      labelText: 'password',
                      labelStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: appColor2,
                      )),
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 15,
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
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    obscureText: passwordVisible1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blue,
                      )),
                      labelText: 'confirm password',
                      labelStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: appColor2,
                      )),
                      hintText: 'confirm password',
                      hintStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 15,
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
          const Spacer(),
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
                'Change Password',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
