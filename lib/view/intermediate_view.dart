import 'package:flutter/material.dart';
import 'package:road_master/modal/tiles_modal.dart';
import 'package:road_master/view/speed_control.dart';

class IntermediateView extends StatelessWidget {
  IntermediateView({super.key});

  List<OfTiles> oftiles = [
    OfTiles(titles: "Speed Control"),
    OfTiles(titles: "Parking Basics"),
    OfTiles(titles: "Adverse Weather Conditions"),
    OfTiles(titles: "Legal And Licensing Requirements"),
    OfTiles(titles: "Changing Lanes And Merging"),
    OfTiles(titles: "Basic Vehicle Maintenace"),
    OfTiles(titles: "Distracted And Imapired Driving"),
    OfTiles(titles: "Right Of Way And Intersections"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: oftiles.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SpeedControl()));
              },
              child: Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(oftiles[i].titles),
                  trailing: Image.asset("assets/group_arrow.png"),
                ),
              ),
            );
          }),
    );
  }
}
