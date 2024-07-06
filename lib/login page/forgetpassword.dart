import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';
import 'package:hrms/g.dart';
import 'package:hrms/login%20page/login.dart';
import 'otppage.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  bool tapEmail = false;
  bool tapPhone = false;
  bool isCheckedMail = false;
  bool isCheckedPhone = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //     to show forget password
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, bottom: 10, top: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, bottom: 10),
                  child: CustomGradient(
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Select which contact details should we use to\nreset your password',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                  child: Image(
                    image: AssetImage('assets/forget.png'),
                    height: 130,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: (isCheckedMail) ? 3 : 1,
                          color: (isCheckedMail)
                              ? appColor2
                              : Colors.black.withOpacity(0.6)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: (isCheckedMail)
                                ? const LinearGradient(
                                    colors: [appColor, appColor2])
                                : const LinearGradient(
                                    colors: [Colors.white, Colors.white])),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.email_outlined,
                            color: (isCheckedMail)
                                ? Colors.white
                                : Colors.black.withOpacity(0.6),
                            size: 25,
                          ),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'E-mail',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 200,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                'manikandan@gmail.com',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Checkbox(
                        value: isCheckedMail,
                        onChanged: (value) {
                          setState(() {
                            isCheckedMail = value!;
                            isCheckedPhone = false;
                          });
                        },
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        side: MaterialStateBorderSide.resolveWith((states) =>
                            const BorderSide(width: 2, color: appColor2)),
                        fillColor: MaterialStateProperty.resolveWith((states) {
                          return (isCheckedMail) ? appColor2 : Colors.white;
                        }),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: (isCheckedPhone) ? 3 : 1,
                          color: (isCheckedPhone)
                              ? appColor2
                              : Colors.black.withOpacity(0.6)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: (isCheckedPhone)
                                ? const LinearGradient(
                                    colors: [appColor, appColor2])
                                : const LinearGradient(
                                    colors: [Colors.white, Colors.white])),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.phone,
                            color: (isCheckedPhone)
                                ? Colors.white
                                : Colors.black.withOpacity(0.6),
                            size: 30,
                          ),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone Number',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 200,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                '9999439298',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Checkbox(
                        value: isCheckedPhone,
                        onChanged: (value) {
                          setState(() {
                            isCheckedPhone = value!;
                            isCheckedMail = false;
                          });
                        },
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        side: MaterialStateBorderSide.resolveWith((states) =>
                            const BorderSide(width: 2, color: appColor2)),
                        fillColor: MaterialStateProperty.resolveWith((states) {
                          return (isCheckedPhone) ? appColor2 : Colors.white;
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, left: 15, right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OtpPage(),
                    ));
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    appColor,
                    appColor2,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Continue',
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
        ],
      ),
    ));
  }
}
