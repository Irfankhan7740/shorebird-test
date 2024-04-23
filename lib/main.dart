import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shorebird_test/experiment.dart';

import 'package:shorebird_test/homePage.dart';
import 'package:shorebird_test/inputedNumber.dart';
import 'package:shorebird_test/manualShoreBird.dart';

import 'number.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'xyz'),
       home:expp1Screen()
    );
  }
}

