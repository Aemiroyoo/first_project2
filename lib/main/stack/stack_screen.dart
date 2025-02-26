import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 95,
              height: 95,
              color: Colors.green,
            ),
            Container(
              width: 80,
              height: 80,
              decoration:  BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
               
            ),
          ],
        )
        
      ),
    );
  }
}