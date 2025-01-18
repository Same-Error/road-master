import 'package:flutter/material.dart';
import 'package:road_master/view/instruction.dart';
import 'package:road_master/modal/test_modal.dart';

class Test extends StatelessWidget {
  Test({super.key});

  List<TestModal> test = [
    TestModal(
      image: "dl_test",
      name: "Driver's License Test",
      subname: "Prepare For Your Driver's License With Our Test Guide",
    ),
    TestModal(
      image: "road_test",
      name: "Road Test",
      subname: "Master Your Road Test With Expert Tips And Practices",
    ),
    TestModal(
      image: "motorcycle_license_test",
      name: "Motorcycle License Test",
      subname: "Get Specialized Study Materials To Ace Your Test",
    ),
    TestModal(
      image: "dl_test",
      name: "Commercial Driver's License Test",
      subname: "Prepare For Your Exam And Hit The Road",
    ),
    TestModal(
      image: "motorcycle_skills_test",
      name: "Motorcycle Skills Test",
      subname: "Learn Motorcycle Control Skills In A Practical, Hands-On Test",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: test.length,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Instruction()));
            },
            child: Card(
              child: Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/${test[i].image}.png"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          test[i].name ?? "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2b319e),
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          test[i].subname ?? "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Image.asset("assets/group_arrow.png"),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
