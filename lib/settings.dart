import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 34.80462,
              width: 492.4600,
              color: const Color(0x66C4C4C4),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 8),
                child: Text(
                  'MY ACCOUNT',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color(0xFF2743FD),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            const CircleAvatar(
              radius: 52,
              backgroundImage: AssetImage(
                'assets/pic 1.png',
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Display Name',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 310,
                ),
                Text(
                  'Jenny',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF565656),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFC4C4C4),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Mobile Number',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 265,
                ),
                Text(
                  '1234567890',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF565656),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFC4C4C4),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Change Password',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
        
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFC4C4C4),
            ),const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Privacy Settings',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
        
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFC4C4C4),
            ),const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Security Settings',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
        
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFC4C4C4),
            ),const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Two-Factor-Authentication',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
        
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFC4C4C4),
            ),const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Connected Social Media',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
        
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFC4C4C4),
            ),const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Notification Preferences',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
        
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFC4C4C4),
            ),const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'App Theme and Personlization',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
        
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFC4C4C4),
            ),const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Languages',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      ),
        
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFC4C4C4),
            ),
          ],
        ),
      ),
    );
  }
}
