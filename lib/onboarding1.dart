import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:road_master/onboarding2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  // Add Introduction_Page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0XFFd5e3ff),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset("assets/onboarding1/onboarding1.png"),
        )

        // Center(child: ),
        );

    // Scaffold(
    //   body: Stack(
    //     children: [
    //       Container(
    //         height: double.infinity,
    //         width: double.infinity,
    //         color: Color(0XFFd5e3ff),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         height: double.infinity,
    //         child: Image.asset("assets/onboarding1/view.png"),
    //       ),
    //       Positioned(
    //         top: 375,
    //         left: 225,

    //         child: Container(
    //           height: 150,
    //           width: 150,
    //           child: Image.asset("assets/onboarding1/road.png"),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    //     IntroductionScreen(
    //   pages: [
    //     PageViewModel(
    //       title: "asldfn",
    //       image: Image.asset("assets/onboarding1/view.png"),
    //     )
    //   ],
    //   onDone: () {
    //     Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => Onboarding2()));
    //   },
    //   showNextButton: false,
    //   done: Text("Done"),
    // );
  }
}
