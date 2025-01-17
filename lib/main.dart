import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:road_master/dashboard.dart';
import 'package:road_master/driving_manuals.dart';
import 'package:road_master/get_started1.dart';
import 'package:road_master/intro_to_driving.dart';
import 'package:road_master/onboarding1.dart';
import 'package:road_master/questions.dart';
import 'package:road_master/splash.dart';
import 'package:road_master/t_c.dart';
import 'package:road_master/two_wheeler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Road Master',
      theme: ThemeData(
        // This is the theme of your application.

        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: TwoWheeler(),
    );
    // MultiProvider(
    //   providers: [ChangeNotifierProvider(create: (_) => CategoryController())],
    //   child:
    // );
  }
}
