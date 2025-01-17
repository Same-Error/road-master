import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart' as http;
import 'package:road_master/category_modal.dart';
import 'package:road_master/driving_manuals.dart';

class Tabbar_category extends StatefulWidget {
  const Tabbar_category({super.key});

  @override
  State<Tabbar_category> createState() => _Tabbar_categoryState();
}

class _Tabbar_categoryState extends State<Tabbar_category> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: response == null
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: response!.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DrivingManuals()));
                  },
                  child: Card(
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: Image.asset(response![i].catImage ?? ""),
                          ),
                          Text(
                            response![i].catName ?? "",
                            style: TextStyle(
                              color: Color(0xff2b319e),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            response![i].description ?? "",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/group.png"),
                          ),
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
