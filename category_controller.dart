// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:road_master/category_modal.dart';

// class CategoryController extends ChangeNotifier {
//   List<OfCategory>? response;
//   void getCat() async {
//     try {
//       var api = await http.get(Uri.parse(
//           "https://appy.trycatchtech.com/v3/rto_advanced/category_list"));
//       if (api.statusCode == 200) {
//         response = OfCategory.categ(jsonDecode(api.body));
//         notifyListeners();
//       }
//     } catch (e) {
//       print("Category Controller Error: $e");
//     }
//   }
// }
