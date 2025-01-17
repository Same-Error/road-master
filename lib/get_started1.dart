import 'package:flutter/material.dart';

class GetStarted1 extends StatelessWidget {
  const GetStarted1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
      ),
      body: Column(
        children: [
          Image.asset("assets/getstarted/rectangle.png"),
        ],
      ),
    );
  }
}
