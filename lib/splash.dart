import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:road_master/onboarding1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Onboarding1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFF2c329e),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.0, 0.5, 1.0],
                  colors: [
                    Colors.lightBlueAccent.withOpacity(0.8),
                    Colors.lightBlueAccent.withOpacity(0.3),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset("assets/splash/frame.png"),
                    Gap(50),
                    Image.asset("assets/splash/road_master.png"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/splash/car.png"),
                    Image.asset("assets/splash/this_action.png")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
