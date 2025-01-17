import 'package:flutter/material.dart';
import 'package:road_master/advanced_view.dart';
import 'package:road_master/beginner.dart';
import 'package:road_master/intermediate.dart';
import 'package:road_master/test_modal.dart';

class DrivingManuals extends StatelessWidget {
  const DrivingManuals({super.key});

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
          Beginner_Manual(),
          Intermediate_Manual(),
          AdvancedView(),
        ]),
      ),
    );
  }
}

class Intermediate extends StatelessWidget {
  const Intermediate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Advanced extends StatelessWidget {
  const Advanced({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
