import 'package:flutter/material.dart';

class FourWheeler extends StatefulWidget {
  const FourWheeler({super.key});

  @override
  State<FourWheeler> createState() => _FourWheelerState();
}

class _FourWheelerState extends State<FourWheeler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("4 Wheeler"),
      ),
    );
  }
}
