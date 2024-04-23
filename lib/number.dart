import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shorebird_test/inputedNumber.dart';





class number extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Get.back(result: int.parse(_controller.text) );


                   // Get.to(inputedNumber(),
                   //    arguments: int.parse(_controller.text));
                  },
                  child:  Container(
                    height: 35,
                    width:120,
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
                    child: Center(child: Text('See Inputed Data'))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


