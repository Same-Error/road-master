import 'package:flutter/material.dart';
import 'package:road_master/view/defence_driving_view.dart';
import 'package:road_master/modal/tiles_modal.dart';

class AdvancedView extends StatelessWidget {
  AdvancedView({super.key});

  List<OfTiles> oftiles = [
    OfTiles(titles: "Vehicle Controls"),
    OfTiles(titles: "Night Driving"),
    OfTiles(titles: "Defense Driving"),
    OfTiles(titles: "Following Distance"),
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
                    MaterialPageRoute(builder: (context) => DefenceDrivingView()));
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
