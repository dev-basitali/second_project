import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/settings.dart';

import 'add_media.dart';

class MAP extends StatefulWidget {
  const MAP({super.key});

  @override
  State<MAP> createState() => _MAPState();
}

class _MAPState extends State<MAP> {
  late Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.4016697681757, 73.03489301534307),
    zoom: 14.4746,
  );

  final List<Marker> _marker = [];
  late final List<Marker> _list = [
    Marker(
        markerId: const MarkerId('1'),
        position: const LatLng(31.4041347424601, 73.04270765243722),
        onTap: () {
          _showBottomSheet(context);
        }),
    Marker(
        markerId: const MarkerId('2'),
        position: const LatLng(31.4016697681757, 73.03489301534307),
        onTap: () {
          _showBottomSheet(context);
        }),
    Marker(
        markerId: const MarkerId('3'),
        position: const LatLng(31.406794820803963, 73.0322165781691),
        onTap: () {
          _showBottomSheet(context);
        }),
  ];
  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Image.asset('assets/image 1.png'),
            const Spacer(),
            IconButton(
              alignment: const Alignment(70.0, 0.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              },
              icon: const Icon(Icons.settings),
              color: const Color(0xFF000000),
            ),
          ],
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        markers: Set<Marker>.of(_marker),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 14, top: 9),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/marker.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text(
                            'Red Chillies',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Text(
                            'Restaurant',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0x80000000),
                              ),
                            ),
                          ),
                          Text(
                            'Open Now',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF00B075),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    _buildImage('assets/image1.png'),
                    const SizedBox(width: 5),
                    _buildImage('assets/image2.png'),
                    const SizedBox(width: 5),
                    _buildImage('assets/image3.png'),
                  ],
                ),
                FloatingActionButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddMedia())
                  );
                },
                  child: const Icon(Icons.camera_alt_outlined),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Widget _buildImage(String imagePath) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          imagePath,
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
