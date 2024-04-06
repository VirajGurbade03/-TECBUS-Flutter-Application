// ignore: file_names
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Pages/Components/utils/rive_utils.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rive/rive.dart';
// https://rive.app/community/1298-2487-animated-icon-set-1-color/
// https://www.youtube.com/watch?v=AaHa7ecxX18

// ignore: camel_case_types
class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => Home_pageState();
}

// ignore: camel_case_types
class Home_pageState extends State<Home_page> {
  static const LatLng pGooglePlex = LatLng(20.7149, 78.5763);

  // late SMIBool searchTigger;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: const GoogleMap(
            initialCameraPosition: CameraPosition(
              target: pGooglePlex,
              zoom: 14.5,
            ),
            mapType: MapType.satellite,
          ),
          bottomNavigationBar: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 67, 201, 1),
                  borderRadius: BorderRadius.circular(26)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // bottomNavs[index].input!.change(true);
                      // Future.delayed(duration:1);,(){
                      //   bottonNavs[index].input.change(false);
                      // }
                      // searchTigger.change(true);
                    },
                    child: const SizedBox(
                      height: 35,
                      width: 35,
                      child: RiveAnimation.network(
                        "https://public.rive.app/community/runtime-files/1298-2487-animated-icon-set-1-color.riv",
                        artboard: "HOME",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                    width: 35,
                    child: RiveAnimation.network(
                        "https://public.rive.app/community/runtime-files/1298-2487-animated-icon-set-1-color.riv",
                        artboard: "CHAT"),
                  ),
                  const SizedBox(
                    height: 35,
                    width: 35,
                    child: RiveAnimation.network(
                        "https://public.rive.app/community/runtime-files/1298-2487-animated-icon-set-1-color.riv",
                        artboard: "USER"),
                  ),
                  const SizedBox(
                    height: 35,
                    width: 35,
                    child: RiveAnimation.network(
                        "https://public.rive.app/community/runtime-files/1298-2487-animated-icon-set-1-color.riv",
                        artboard: "SETTINGS"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}



// artboard: "CHAT",
// onInit: (artboard) {
//   StateMachineController controller =
//       StateMachineController(RiveUtils.getRiveController(
//               artboard,
//               StateMachineName: "CHAT_interactivity")
//           as StateMachine);
//   searchTigger = controller.findSMI("active") as SMIBool;
// },