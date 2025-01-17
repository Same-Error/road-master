import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:road_master/four_wheeler.dart';
import 'package:road_master/two_wheeler.dart';

class VehicleScreen extends StatelessWidget {
  const VehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "APP NAME",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "Choose a Vehicle",
            style: TextStyle(
              color: Color(0xff2b319e),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 60),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TwoWheeler(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/choose_a_vehicle_bike.png"),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      bottomLeft: Radius.circular(80),
                    ),
                  ),
                  child: Container(
                    height: 125,
                    width: MediaQuery.sizeOf(context).width / 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        bottomLeft: Radius.circular(80),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Two Wheeler",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 8),
                          Text(
                            " Get useful tips and info on your two-wheeler for a safe journey",
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 80),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FourWheeler(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    ),
                  ),
                  child: Container(
                    height: 125,
                    width: MediaQuery.sizeOf(context).width / 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(80),
                        bottomRight: Radius.circular(80),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Two Wheeler",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 8),
                          Text(
                            " Get useful tips and info on your two-wheeler for a safe journey",
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Image.asset("assets/choose_a_vehicle_car.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
