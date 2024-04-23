import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restart_app/restart_app.dart';

import 'package:shorebird_code_push/shorebird_code_push.dart';

// Create an instance of ShorebirdCodePush. Because this example only contains
// a single widget, we create it here, but you will likely only need to create
// a single instance of ShorebirdCodePush in your app.
final _shorebirdCodePush = ShorebirdCodePush();

class MyHomePages extends StatefulWidget {
  const MyHomePages({required this.title, super.key});

  final String title;

  @override
  State<MyHomePages> createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("hello user "),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('wel to bottom sheet kugelblitz'
                                ''),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text('Close'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text('Show Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}

