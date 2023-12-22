import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:untitled/map.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            const Image(
              image: AssetImage(
                'assets/OTP 1.png',
              ),
              height: 256.1272,
              width: 251.1432,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 28.0,
            ),
            Text(
              'OTP Verification',
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
                child: RichText(
                  text: TextSpan(
                    text: 'Enter the OTP sent to ',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Color(0xFF3A3A3A)
                      ),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '+91 987987333',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Color(0xFF3A3A3A),
                            fontWeight: FontWeight.w700
                          )
                        )
                      )
                    ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55.0, right: 55.37),
              child: OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 43.9232,
                textFieldAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
            const SizedBox(
              height: 31.82,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Didn’t you receive the OTP? ',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color(0xFFB9B9B9),
                      fontSize: 16.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('clicked');
                  },
                  child: Text(
                    'Resend OTP',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Color(0xFF1D3BFF),
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(
              height: 63,
            ),
            SizedBox(
              height: 65.8848,
              width: 336.996,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF4960F9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MAP()),
                  );
                },
                child: Text(
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19.97,
                          color: Color(0xFFFFFFFF)),
                    ),
                    'Verify'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
