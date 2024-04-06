// // ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Google_login extends StatelessWidget {
  const Google_login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(0, 67, 201, 1),
          body: Padding(
            padding: const EdgeInsets.only(left: 1.0),
            child: Column(
              children: [
                const SizedBox(height: 500),
                Padding(
                  padding: const EdgeInsets.only(right: 198),
                  child: Text(
                    "Welcome",
                    style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(right: 110),
                  child: Text(
                    "Explore the new way \nof trawl with \nTecBus",
                    style:
                        GoogleFonts.dmSans(color: Colors.white, fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: CupertinoButton.filled(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 16),
                    borderRadius: BorderRadius.circular(16),
                    onPressed: () {},
                    child: const Text("Sign in with Google"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CupertinoButton.filled(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 16),
                    borderRadius: BorderRadius.circular(16),
                    onPressed: () {
                      Navigator.pushNamed(context, "/Login");
                    },
                    child: const Text(" Create an account ")),
              ],
            ),
          )),
    );
  }
}
