import 'package:aber_app/Screens/Ridebooking/ride_bookking_screen1.dart';
import 'package:aber_app/Screens/authentication/authentication_screen.dart';
import 'package:aber_app/Screens/coupen_apply/coupen_apply_scree.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:aber_app/constant/colors.dart';
import 'package:aber_app/constant/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class RatingDoneScreen extends StatefulWidget {
  const RatingDoneScreen({Key? key}) : super(key: key);

  @override
  State<RatingDoneScreen> createState() => _RatingDoneScreenState();
}

class _RatingDoneScreenState extends State<RatingDoneScreen> {
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
                "Tips",
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
              left: w * 0.27,
              child: Text(
                "Wow! A 5 star !",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: h * 0.45,
              left: w * 0.25,
              child: Text(
                "Wanna add tip for",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: h * 0.48,
              left: w * 0.28,
              child: Text(
                "Gregory",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: h * 0.58,
              left: w * 0.13,
              child: CircleAvatar(
                radius: 40.0,
                backgroundColor: Color.fromARGB(255, 240, 234, 234),
                child: Text(
                  "\$1",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900),
                ),
              )),
          Positioned(
              top: h * 0.58,
              left: w * 0.39,
              child: CircleAvatar(
                radius: 40.0,
                backgroundColor: Color.fromARGB(255, 84, 54, 255),
                child: Text(
                  "\$2",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900),
                ),
              )),
          Positioned(
              top: h * 0.58,
              left: w * 0.65,
              child: CircleAvatar(
                radius: 40.0,
                backgroundColor: Color.fromARGB(255, 235, 229, 229),
                child: Text(
                  "\$5",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900),
                ),
              )),
          Positioned(
              top: h * 0.82,
              left: w * 0.1,
              child: SizedBox(
                width: w * 0.8,
                height: h * 0.06,
                child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>CoupenApplyScreen()),
                      );
                    },
                    child: Text(
                      "Done",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    )),
              )),
          Positioned(
              top: h * 0.75,
              left: w * 0.25,
              child: Text(
                "Choose other amount",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.mainred,
                    fontSize: 18.0),
              )),
          Positioned(
              top: h * 0.9,
              left: w * 0.35,
              child: TextButton(
                onPressed: (() {}),
                child: Text(
                  "Maybe next time",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 182, 178, 178)),
                ),
              )),
        ]),
      ),
    );
  }
}
