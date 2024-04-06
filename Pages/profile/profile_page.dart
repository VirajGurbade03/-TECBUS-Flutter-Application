import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  XFile? _profilePhoto; // Declare the variable within _ProfilePageState
  String fullName = "Name";
  String email = "Email Id";
  // String mobileNo = ""; // Initialize mobile number
  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white12,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned(
                //Top blue Container
                bottom: 510,
                left: -3,
                right: -3,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 200, horizontal: 10),
                  margin:
                      const EdgeInsets.symmetric(vertical: 100, horizontal: 0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(225, 0, 67, 201),
                    borderRadius: BorderRadius.circular(20),
                  ),
                )),
            const Positioned(
                top: 94,
                left: 157,
                child: Text(
                  "My Profile",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
            Positioned(
              bottom: 445,
              left: 5,
              right: 5,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 0),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 6),
                    ),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                  ],
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center content vertically
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor:
                              Colors.grey[300], // Placeholder color
                          backgroundImage: _profilePhoto != null
                              ? FileImage(File(_profilePhoto!.path))
                              : null,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            onTap: _pickImage,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: const Icon(Icons.edit, color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                        height:
                            16), // Add spacing between the profile image and text
                    // const Text(
                    //   "Viraj Gurbade",
                    //   style:
                    //       TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    // ),
                    // const Text(
                    //   "virajggurbade@gmail.com",
                    //   style: TextStyle(
                    //       fontSize: 17, fontWeight: FontWeight.normal),
                    // ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 176,
              left: 5,
              right: 5,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 198, 196, 196),
                      blurRadius: 5.1,
                      offset: Offset(1.0, 10),
                    ),
                  ],
                ),
                child: Column(
                  // Wrap inputs in a Column for vertical alignment
                  children: [
                    // Full name input
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.transparent,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20), // Adjust the horizontal padding
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    // Email ID input
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email Id",
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.transparent,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20), // Adjust the horizontal padding
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    // Phone number input
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.transparent,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              right: 0,
              left: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => setState(() => isEditing = !isEditing),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      minimumSize: const Size(50, 50),
                      backgroundColor: isEditing
                          ? const Color.fromRGBO(
                              0, 67, 201, 0.478) /* Change save color */
                          : Colors.blue /* Change edit color */,
                      textStyle: const TextStyle(
                        fontSize: 20, // Increase font size
                        fontWeight: FontWeight.bold, // Optional for emphasis
                      ),
                    ),
                    child: Text(isEditing ? "Save" : "Edit"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _profilePhoto = image;
      });
    }
  }
}
