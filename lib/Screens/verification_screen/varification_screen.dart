import 'package:aber_app/Screens/Ridebooking/ride_bookking_screen1.dart';
import 'package:aber_app/Screens/authentication/authentication_screen.dart';
import 'package:aber_app/Screens/car.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:aber_app/constant/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VarificationScreen extends StatefulWidget {
  const VarificationScreen({Key? key}) : super(key: key);

  @override
  State<VarificationScreen> createState() => _VarificationScreenState();
}

class _VarificationScreenState extends State<VarificationScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        child: Stack(
          children: [
            Positioned(
                top: h * 0,
                child: Container(
                  color: Color.fromARGB(255, 193, 29, 29),
                  width: w,
                  height: h * 0.25,
                )),
            Positioned(
                top: h * 0.12,
                left: w * 0.05,
                child: Text(
                  "Phone verification",
                  style: MYTextstyle.heading.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: Colors.white),
                )),
            Positioned(
                top: h * 0.19,
                left: w * 0.05,
                child: Text(
                  "Enter your OTP code here",
                  style: MYTextstyle.heading.copyWith(
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                )),
            Positioned(
                top: h * 0.6,
                left: w * 0.05,
                child: SizedBox(
                  width: w * 0.9,
                  child: MyButton(
                    btnname: "Verify Now",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                )),
            Positioned(
                top: h * 0.02,
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
              top: h * 0.3,
              child: OtpTextField(
                margin: EdgeInsets.all(25.0),
                keyboardType: TextInputType.number,
                numberOfFields: 4,
                decoration: InputDecoration(),
                borderColor: Color.fromARGB(255, 193, 29, 29),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
              ),
            )
          ],
        ),
      ),
    );
  }
}
