import 'package:aber_app/Screens/drive_confirm/drive_confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RideReuestScreen extends StatelessWidget {
  const RideReuestScreen({Key? key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) => ConfirmRideScreen()),
              );
            })),
        body: Container(
            child: Stack(
          children: [
            Positioned(
              top: h * 0.20,
              left: w * 0.20,
              child: CircleAvatar(
                  radius: w * 0.32,
                  backgroundImage: AssetImage("images/rr.jpg")),
            ),
            Positioned(
                top: h * 0.6,
                left: w * 0.25,
                child: Text(
                  "Request Ride",
                  style: TextStyle(
                      fontFamily: 'Bree Serif',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: h * 0.68,
                left: w * 0.18,
                child: Text(
                  "Request a ride get picked up by",
                  style: TextStyle(
                    color: Color.fromARGB(255, 90, 89, 89),
                    fontSize: 18.0,
                  ),
                )),
            Positioned(
                top: h * 0.71,
                left: w * 0.22,
                child: Text(
                  " a nearby community driver",
                  style: TextStyle(
                    color: Color.fromARGB(255, 90, 89, 89),
                    fontSize: 18.0,
                  ),
                )),
          ],
        )));
  }
}
