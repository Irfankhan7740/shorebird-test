import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class Exss2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    // Retrieve the passed number from arguments


    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.blueGrey
                      ,Colors.pink,

                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,

                  ),
                ),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(labelText: 'Enter Number'),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                // You can also pass back data to the previous screen if needed
                Get.back(result:  {
                  "data" : _controller.text,
                  "meta" : 10,
                });
              },
              child: Text('Pass Data Back'),
            ),
          ],
        ),
      ),
    );
  }
}