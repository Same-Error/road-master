import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:road_master/modal/advanced_modal.dart';
import 'package:road_master/modal/intro_modal.dart';
import 'package:road_master/modal/speed_modal.dart';

class DefenceDriving extends StatefulWidget {
  DefenceDriving({super.key});

  @override
  State<DefenceDriving> createState() => _DefenceDrivingState();
}

class _DefenceDrivingState extends State<DefenceDriving> {
  List<OfAdvanced>? response;

  void getIntro() async {
    try {
      var api = await http.get(Uri.parse(
          "https://appy.trycatchtech.com/v3/rto_advanced/post_list?cat_id=1&level=advanced"));
      if (api.statusCode == 200) {
        response = OfAdvanced.advance(jsonDecode(api.body));

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
    getIntro();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Defence Driving",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: response == null
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.blue.shade100,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      response!.first.description ?? "",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
