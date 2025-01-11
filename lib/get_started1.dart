import 'package:flutter/material.dart';

class GetStarted1 extends StatelessWidget {
  const GetStarted1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/getstarted/rectangle.png"),
          // Image.asset("assets/getstarted/component.png"),
          // Image.asset("assets/getstarted/group.png"),
        ],
      ),
    );
  }
}
