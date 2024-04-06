// ignore_for_file: file_names

// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HPage extends StatefulWidget {
  
  const HPage({super.key});

  @override
  State<HPage> createState() => _HPageState();
}

class _HPageState extends State<HPage> {
  static const LatLng pGooglePlex = LatLng(20.7149, 78.5763);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Google_Map(),
            Positioned(
                bottom: 67,
                left: 5,
                right: 5,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 80, horizontal: 10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 7),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(225, 0, 67, 201),
                    borderRadius: BorderRadius.circular(26),
                  ),
                )
                ),
          ],
        ),
      ),
    );
  }

  GoogleMap Google_Map() {
    return const GoogleMap(
      zoomControlsEnabled: false,
      initialCameraPosition: CameraPosition(
        target: pGooglePlex,
        zoom: 17.5,
      ),
      mapType: MapType.hybrid,
    );
  }
}
