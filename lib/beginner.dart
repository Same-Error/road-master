import 'package:flutter/material.dart';
import 'package:road_master/intro_to_driving.dart';
import 'package:road_master/test_modal.dart';

class Beginner_Manual extends StatelessWidget {
  Beginner_Manual({super.key});

  List<OfTiles> oftiles = [
    OfTiles(titles: "Introduction to Driving"),
    OfTiles(titles: "Getting Started"),
    OfTiles(titles: "Starting And Stopping The Vehicle"),
    OfTiles(titles: "Steering And Turing"),
    OfTiles(titles: "Traffic Signs And Signals"),
    OfTiles(titles: "Sharing The Road"),
    OfTiles(titles: "Emergency Procedures"),
    OfTiles(titles: "Backing Up And Reversing"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: oftiles.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> IntroToDriving()));
              },
              child: Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(oftiles[i].titles),
                  trailing: Image.asset("assets/group.png"),
                ),
              ),
            );
          }),
    );
  }
}
