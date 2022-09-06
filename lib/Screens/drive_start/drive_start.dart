import 'package:aber_app/Screens/authentication/authentication_screen.dart';
import 'package:aber_app/Screens/drive_confirm/drive_confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DriveStartScreen extends StatelessWidget {
  const DriveStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            child: Stack(
      children: [
        Positioned(
          top: h * 0.02,
          child: Container(
              width: w, height: h * 0.5, child: Image.asset("images/Page.png")),
        ),
        Positioned(
            top: h * 0.5,
            left: w * 0.18,
            child: Text(
              "Hi, nice to meet",
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            )),
        Positioned(
            top: h * 0.55,
            left: w * 0.42,
            child: Text(
              "you!",
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            )),
        Positioned(
            top: h * 0.62,
            left: w * 0.18,
            child: Text(
              "Choose your location to start ",
              style: TextStyle(
                color: Color.fromARGB(255, 119, 114, 114),
                fontSize: 19.0,
              ),
            )),
        Positioned(
            top: h * 0.66,
            left: w * 0.18,
            child: Text(
              " find restaurants around you.",
              style: TextStyle(
                color: Color.fromARGB(255, 119, 114, 114),
                fontSize: 19.0,
              ),
            )),
        Positioned(
            top: h * 0.8,
            left: w * 0.16,
            child: SizedBox(
              width: w * 0.7,
              height: h * 0.05,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(
                                width: 1.5,
                                color: Color.fromARGB(255, 193, 29, 29),
                              )))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AuthenticationScreen()),
                    );
                  },
                  child: Text(
                    "Use Current location",
                    style: TextStyle(
                      color: Color.fromARGB(255, 193, 29, 29),
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  )),
            )),
        Positioned(
            top: h * 0.85,
            left: w * 0.3,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Select it manually",
                  style: TextStyle(
                    color: Color.fromARGB(255, 193, 29, 29),
                    fontSize: 15.0,
                  ),
                )))
      ],
    )));
  }
}
