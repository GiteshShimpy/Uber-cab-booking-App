import 'package:aber_app/Screens/track_ride/track_ride.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConfirmRideScreen extends StatelessWidget {
  const ConfirmRideScreen({Key? key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) => TrackRideScreen()),
              );
            })),
        body: Container(
            child: Stack(
          children: [
            Positioned(
              top: h * 0.10,
              left: w * 0.18,
              child: CircleAvatar(
                  radius: w * 0.32,
                  backgroundImage: AssetImage("images/reqr.jpg")),
            ),
            Positioned(
                top: h * 0.6,
                left: w * 0.27,
                child: Text(
                  "Confirm Your",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: h * 0.65,
                left: w * 0.4,
                child: Text(
                  "Driver",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: h * 0.72,
                left: w * 0.18,
                child: Text(
                  "Hugs drivers network helps you",
                  style: TextStyle(
                    color: Color.fromARGB(255, 78, 78, 78),
                    fontSize: 19.0,
                  ),
                )),
            Positioned(
                top: h * 0.75,
                left: w * 0.17,
                child: Text(
                  "find confortable, safe and cheap",
                  style: TextStyle(
                    color: Color.fromARGB(255, 78, 78, 78),
                    fontSize: 19.0,
                  ),
                )),
            Positioned(
                top: h * 0.78,
                left: w * 0.45,
                child: Text(
                  "ride",
                  style: TextStyle(
                    color: Color.fromARGB(255, 78, 78, 78),
                    fontSize: 19.0,
                  ),
                )),
          ],
        )));
  }
}
