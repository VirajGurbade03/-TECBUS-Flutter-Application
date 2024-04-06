import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_panel/sliding_up_panel_widget.dart';

class SPage extends StatefulWidget {
  const SPage({super.key});

  @override
  State<SPage> createState() => _SPageState();
}

class _SPageState extends State<SPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanelWidget(
          panelController: SlidingUpPanelController(),
          controlHeight: 50,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 3.0),
            decoration: const ShapeDecoration(
              color: Color.fromARGB(178, 60, 2, 235),
              shadows: [
                BoxShadow(
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                    color: Color(0x11000000))
              ],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              )),
            ),
          )),
    );
  }
}
