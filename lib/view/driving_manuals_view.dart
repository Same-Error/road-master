import 'package:flutter/material.dart';
import 'package:road_master/view/advanced_view.dart';
import 'package:road_master/view/intermediate_view.dart';
import 'package:road_master/view/beginner_view.dart';

class DrivingManualsView extends StatelessWidget {
  const DrivingManualsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.looks_one),
                text: "Beginner",
              ),
              Tab(
                icon: Icon(Icons.looks_two),
                text: "Intermediate",
              ),
              Tab(
                icon: Icon(Icons.looks_3),
                text: "Advanced",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          BeginnerView(),
          IntermediateView(),
          AdvancedView(),
        ]),
      ),
    );
  }
}
