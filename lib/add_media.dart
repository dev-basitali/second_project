import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMedia extends StatefulWidget {
  const AddMedia({Key? key});

  @override
  State<AddMedia> createState() => _AddMediaState();
}

class _AddMediaState extends State<AddMedia> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        title: Center(
          child: Text(
            'Add Media',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
      ),
      body: const Text(''),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: screenHeight * 0.1,
                  right: screenHeight * 0.05,
                  bottom: screenHeight * 0.06,
                ),
                child: Column(
                  children: [
                    const Icon(
                      Icons.circle_outlined,
                      size: 80,
                    ),
                    Text(
                      'Hold for video, tap for photo',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: screenHeight * 0.07,
                  right: screenHeight * 0.043,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
