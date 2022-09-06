import 'package:aber_app/Screens/Ridebooking/ride_bookking_screen1.dart';
import 'package:aber_app/Screens/authentication/authentication_screen.dart';
import 'package:aber_app/Screens/rating_done/rating_done.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:aber_app/constant/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 193, 29, 29),
      body: Container(
        height: h,
        width: w,
        child: Stack(children: [
          Positioned(
              top: h * 0.08,
              left: w * 0.4,
              child: Text(
                "Rating",
                style: MYTextstyle.heading.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white),
              )),
          Positioned(
              top: h * 0.07,
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    size: 30.0,
                    Icons.arrow_back,
                    color: Colors.white,
                  ))),
          Positioned(
              top: h * 0.25,
              left: w * 0.05,
              child: Container(
                width: w * 0.9,
                height: h * 0.7,
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(10.0)),
                  color: Colors.white,
                ),
              )),
          Positioned(
              top: h * 0.12,
              left: w * 0.38,
              child: SizedBox(
                  width: w * 0.26,
                  height: h * 0.26,
                  child: Image.asset("images/rp.png"))),
          Positioned(
              top: h * 0.32,
              left: w * 0.31,
              child: Text(
                "Gregory Smith",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: h * 0.36,
              left: w * 0.43,
              child: Text(
                "652-UKW",
                style: TextStyle(color: Color.fromARGB(255, 182, 178, 178)),
              )),
          Positioned(
              top: h * 0.41,
              left: w * 0.25,
              child: Text(
                "How is your trip?",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: h * 0.5,
              left: w * 0.22,
              child: Text(
                "Your feedback will help",
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 182, 178, 178)),
              )),
          Positioned(
              top: h * 0.53,
              left: w * 0.18,
              child: Text(
                "improve driving experience",
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 182, 178, 178)),
              )),
          Positioned(
              top: h * 0.58,
              left: w * 0.13,
              child: SizedBox(
                  width: w * 0.1,
                  height: h * 0.1,
                  child: Image.asset("images/Shape.png"))),
          Positioned(
              top: h * 0.58,
              left: w * 0.28,
              child: SizedBox(
                  width: w * 0.1,
                  height: h * 0.1,
                  child: Image.asset("images/Shape.png"))),
          Positioned(
              top: h * 0.58,
              left: w * 0.44,
              child: SizedBox(
                  width: w * 0.1,
                  height: h * 0.1,
                  child: Image.asset("images/Shape.png"))),
          Positioned(
              top: h * 0.58,
              left: w * 0.6,
              child: SizedBox(
                  width: w * 0.1,
                  height: h * 0.1,
                  child: Image.asset("images/Shape.png"))),
          Positioned(
              top: h * 0.58,
              left: w * 0.75,
              child: SizedBox(
                  width: w * 0.1,
                  height: h * 0.1,
                  child: Image.asset("images/Shape.png"))),
          Positioned(
              top: h * 0.88,
              left: w * 0.08,
              child: SizedBox(
                width: w * 0.85,
                height: h * 0.06,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RatingDoneScreen()),
                      );
                    },
                    child: Text(
                      "Submit Review",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    )),
              )),
          Positioned(
              top: h * 0.7,
              left: w * 0.08,
              child: Container(
                height: h * 0.15,
                width: w * 0.85,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Color.fromARGB(255, 248, 246, 246),
                ),
                child: SizedBox(
                    width: w * 0.8,
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: "  Additional comments..."),
                    )),
              ))
        ]),
      ),
    );
  }
}
