import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'otp.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 193.0,
                ),
                Text(
                  'Sing Up',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF5B5B5B),
                        height: 0),
                  ),
                ),
                const SizedBox(
                  height: 31.42,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65.43, right: 64.93),
                  child: Center(
                    child: Text(
                      'Sign up using your phone number with the code or link sent',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Color(0xFF3A3A3A),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 31.82,
                ),
                Text(
                  'Enter Mobile number',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color(0xFFB9B9B9),
                      fontSize: 16.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11.92,
                ),
                Padding(

                  padding: const EdgeInsets.only(left: 105, right: 105),
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700),
                          color: const Color(0xFF3A3A3A)
                      
                    ),
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: '+91 987 987 333',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 65.8848,
                  width: 336.996,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF4960F9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const OTP()),
                      );
                    },
                    child:  Text(style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 19.97,
                        color: Color(0xFFFFFFFF)
                      )
                    ),
                        'Sign Up'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
