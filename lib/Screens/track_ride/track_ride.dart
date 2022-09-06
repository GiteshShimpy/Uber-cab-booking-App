import 'package:aber_app/Screens/drive_confirm/drive_confirm.dart';
import 'package:aber_app/Screens/drive_start/drive_start.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrackRideScreen extends StatelessWidget {
  const TrackRideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            child: Stack(
      children: [
        Positioned(
          top: h * 0.1,
          left: w * 0.15,
          child: Positioned(
            top: h * 0.1,
            left: w * 0.15,
            child: Image.asset("images/tr.png"),
          ),
        ),
        Positioned(
            top: h * 0.5,
            left: w * 0.18,
            child: Text(
              "Track Your Ride",
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            )),
        Positioned(
            top: h * 0.62,
            left: w * 0.16,
            child: Text(
              "Know your driver in advance and",
              style: TextStyle(
                color: Color.fromARGB(255, 78, 78, 78),
                fontSize: 19.0,
              ),
            )),
        Positioned(
            top: h * 0.66,
            left: w * 0.17,
            child: Text(
              " be able to view current location",
              style: TextStyle(
                color: Color.fromARGB(255, 78, 78, 78),
                fontSize: 19.0,
              ),
            )),
        Positioned(
            top: h * 0.7,
            left: w * 0.28,
            child: Text(
              "in real time on the map",
              style: TextStyle(
                color: Color.fromARGB(255, 78, 78, 78),
                fontSize: 19.0,
              ),
            )),
        Positioned(
            top: h * 0.8,
            left: w * 0.28,
            child: SizedBox(
              width: w * 0.5,
              height: h * 0.05,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 193, 29, 29),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DriveStartScreen()),
                    );
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  )),
            ))
      ],
    )));
  }
}
