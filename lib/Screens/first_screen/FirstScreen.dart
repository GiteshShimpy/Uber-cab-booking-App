import 'package:aber_app/Screens/ride_request/ride_request_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 238, 121, 108),
            child: Icon(Icons.arrow_forward),
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RideReuestScreen()),
              );
            })),
        backgroundColor: Color.fromARGB(255, 193, 29, 29),
        body: Stack(
          children: [
            Positioned(
                top: h * 0.2,
                left: w * 0.3,
                child: Container(
                    width: w * 0.4,
                    height: h * 0.4,
                    child: Image.asset("images/Logo.png"))),
            Positioned(
                top: h * 0.68,
                child: Container(
                    height: h * 0.36,
                    width: w * 1.0,
                    child: Image.asset("images/graph.png"))),
            Positioned(
                top: h * 0.81,
                left: w * 0.0,
                child: Container(
                    height: h * 0.25,
                    width: w * 0.4,
                    child: Image.asset("images/graph2.png"))),
            Positioned(
                top: h * 0.81,
                left: w * 0.4,
                child: Container(
                    height: h * 0.25,
                    width: w * 0.6,
                    child: Image.asset("images/graph3.png"))),
          ],
        ));
  }
}
