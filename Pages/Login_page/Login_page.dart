import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromRGBO(0, 67, 201, 1),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 400,
                  ),
                  CupertinoTextField(
                    textInputAction: TextInputAction.next,
                    padding: const EdgeInsets.all(16),
                    placeholder: "Enter Your Name",
                    placeholderStyle: const TextStyle(
                        color: Color.fromRGBO(0, 67, 201, 0.478)),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CupertinoTextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    padding: const EdgeInsets.all(16),
                    placeholder: "Enter Your email",
                    placeholderStyle: const TextStyle(
                        color: Color.fromRGBO(0, 67, 201, 0.478)),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CupertinoTextField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    padding: const EdgeInsets.all(16),
                    placeholder: "Enter Your Number",
                    placeholderStyle: const TextStyle(
                        color: Color.fromRGBO(0, 67, 201, 0.478)),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CupertinoTextField(
                    textInputAction: TextInputAction.next,
                    padding: const EdgeInsets.all(16),
                    placeholder: "Password",
                    obscureText: true,
                    obscuringCharacter: "*",
                    placeholderStyle: const TextStyle(
                        color: Color.fromRGBO(0, 67, 201, 0.478)),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CupertinoButton.filled(
                    borderRadius: BorderRadius.circular(20),
                    onPressed: () {
                      Navigator.pushNamed(context, "/GnavPage");
                    },
                    child: const Text("Sign in"),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Alreadyac");
                    },
                    child: const Text("Already Have Account?"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
