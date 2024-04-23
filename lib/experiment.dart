import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:shorebird_test/exsss2Screen.dart';

class expp1Screen extends StatefulWidget {
  @override
  State<expp1Screen> createState() => _expp1ScreenState();
}

class _expp1ScreenState extends State<expp1Screen> {
  var res = {};
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'),
      ),
      body: Column(children: [
        Center(
          child: ElevatedButton(
            onPressed: () async {
              var data = await Get.to(
                Exss2Screen(),
              );
              print(res);
              print(Get.arguments);
              print(data);
              setState(() {
                res = data;
              });
            },
            child: Text('Go to Screen 2 '),
          ),
        ),
        Text("${res["data"]}")
      ]),
    );
  }
}

// Screen2
