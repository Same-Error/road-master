import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:road_master/dashboard.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Questions",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF2c329e),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFF2c329e),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.0, 0.5, 1.0],
                  colors: [
                    Colors.lightBlueAccent.withOpacity(0.8),
                    Colors.lightBlueAccent.withOpacity(0.3),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 1; i <= 5; i++) ...{
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = i;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: MediaQuery.sizeOf(context).width / 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selectedIndex == i
                                  ? Colors.white
                                  : Colors.transparent,
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                i.toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: selectedIndex == i
                                      ? Color(0xFF2c329e)
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      }
                    ],
                  ),
                  Container(
                    height: 500,
                    width: MediaQuery.sizeOf(context).width / 1.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Gap(30),
                        Text(
                          " Have You Ever Driven A Vehicle Before?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xFF2c329e),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(40),
                        SizedBox(
                          width: 300,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "A. Yes",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        Gap(20),
                        SizedBox(
                          width: 300,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "B. No",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        Gap(175),
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Dashboard(),
                                ),
                              );
                            },
                            child: Text(
                              "Next",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xff2b319e),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
