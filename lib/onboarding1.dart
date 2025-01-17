import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:road_master/onboarding2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFd5e3ff),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Onboarding2()));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/onboarding/onboarding1.png"),
            ),
          ),
        ),
      ),
    );
  }
}
