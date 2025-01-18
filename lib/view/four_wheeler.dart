import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:road_master/modal/category_modal.dart';
import 'package:road_master/view/category_tabbar.dart';
import 'package:road_master/view/test.dart';
import 'package:road_master/modal/test_modal.dart';
import 'package:http/http.dart' as http;

class FourWheeler extends StatefulWidget {
  const FourWheeler({super.key});

  @override
  State<FourWheeler> createState() => _FourWheelerState();
}

class _FourWheelerState extends State<FourWheeler> {
  List<OfCategory>? response;
  void getCat() async {
    try {
      var api = await http.get(Uri.parse(
          "https://appy.trycatchtech.com/v3/rto_advanced/category_list"));
      if (api.statusCode == 200) {
        response = OfCategory.categ(jsonDecode(api.body));

        setState(() {});
      }
    } catch (e) {
      print("Category Controller Error: $e");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCat();
  }

  List<TestModal> test = [
    TestModal(image: "dl_test", name: "Driver's License Test"),
    TestModal(image: "road_test", name: "Road Test"),
    TestModal(
        image: "motorcycle_license_test", name: "Motorcycle License Test"),
    TestModal(image: "dl_test", name: "Commercial License Test"),
    TestModal(image: "motorcycle_skills_test", name: "Motorcycle Skills Test"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.grid_on),
              text: "Category",
            ),
            Tab(
              icon: Icon(Icons.assignment),
              text: "Test",
            ),
          ],
        ),
        appBar: AppBar(
          title: Text(
            "ROAD MASTER",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xff3260bc),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: 700,
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Color(0xFF3260bc),
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
                    Positioned.fill(
                      top: 75,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Image.asset("assets/car_page.png"),
                    ),
                    Positioned(
                      top: 200,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Test",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for (int i = 0; i < test.length; i++) ...{
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        side: BorderSide(
                                          color: Colors.grey.shade300,
                                          width: 1,
                                        ),
                                      ),
                                      color: Colors.white,
                                      child: Container(
                                        height: 140,
                                        width: 100,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: 80,
                                              width: 80,
                                              child: Image.asset(
                                                  "assets/${test[i].image}.png"),
                                            ),
                                            Text(
                                              "${test[i].name}",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  }
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Category",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            response == null
                                ? Center(child: CircularProgressIndicator())
                                : SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        for (int i = 0;
                                            i < response!.length;
                                            i++) ...{
                                          Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              side: BorderSide(
                                                color: Colors.grey.shade300,
                                                width: 1,
                                              ),
                                            ),
                                            color: Colors.white,
                                            child: Container(
                                              height: 140,
                                              width: 100,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    height: 80,
                                                    width: 80,
                                                    child: Image.network(
                                                        response![i].catImage ??
                                                            ""),
                                                  ),
                                                  Text(
                                                    response![i].catName ?? "",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        }
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CategoryTabbar(),
            Test(),
          ],
        ),
      ),
    );
  }
}
