import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:shorebird_test/homePage.dart';
import 'package:shorebird_test/manualShoreBird.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _progressMessage = '';
  bool _isDownloading = false;




  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
            centerTitle: true
        ,
            title: Text(widget.title),
      ),
      body:  Center(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly
           ,
           children: [
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 InkWell(
                   onTap: () {
                     final snackBar = SnackBar(
                       content: Text('This is a snackbar'),
                       action: SnackBarAction(
                         label: 'Close',
                         onPressed: () {
                           // Some code to undo the change.
                         },
                       ),
                     );

                     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                   },
                   child: Container(
                     height: 150,
                     width: 150,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10),
                       ),
                       // border: Border.all(width: 10,color: Colors.black),
                       color: Colors.red,


                     ),
                     child: Center(child: Card(
                         elevation: 20,
                         child: Text("",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),))),
                   ),
                 ),
                 Container(
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10),
                       ),
                       // border: Border.all(width: 10,color: Colors.black),
                       color: Colors.blue

                   ),
                   child: Center(
                     child: Card(
                       elevation: 20,
                       child: Text(''
                           '',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),),
                     ),
                   ),


                 )
               ],
        ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   height: 150,
                   width: 150,

                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10),
                       ),
                       // border: Border.all(width: 10,color: Colors.black),
                     color: Colors.green,

                   ),
                   child: Center(child: Text("",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),)),
                 ),
                 Container(
                   height: 150,
                   width: 150,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10),
                       ),
                       // border: Border.all(width: 10,color: Colors.black),
                       color: Colors.orange

                   ),
                   child: Center(child: Card(
                     elevation: 20,
                       child: Text('',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),))),

                 )
               ],
             ),
             InkWell(onTap:(){
               Get.to(MyHomePages(title: '',));
             },child: Text("hello user ")),




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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      );
  }
}