import 'package:flutter/material.dart';
class inputedNumber extends StatelessWidget {
  get val => null;

  @override
  Widget build(BuildContext context) {
    final int number =0;

    final int inputNumber = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
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

              child:
                 val == null ?   const Text("") : Text('$inputNumber')
    )

          ],
        ),
      ),
    );
  }
}