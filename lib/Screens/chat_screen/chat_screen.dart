import 'package:aber_app/Screens/Ridebooking/ride_bookking_screen1.dart';
import 'package:aber_app/Screens/authentication/authentication_screen.dart';
import 'package:aber_app/Screens/rating/rating.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:aber_app/constant/colors.dart';
import 'package:aber_app/constant/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                  height: h * 0.2,
                )),
            Positioned(
                top: h * 0.1,
                left: w * 0.05,
                child: Text(
                  "Gregory Smith",
                  style: MYTextstyle.heading.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white),
                )),
            Positioned(
                top: h * 0.05,
                left: w * 0.78,
                child: SizedBox(
                    width: w * 0.15,
                    height: h * 0.15,
                    child: Image.asset("images/rp.png"))),
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
                top: h * 0.22,
                left: w * 0.35,
                child: Text(
                  "Today at 5:03 PM",
                  style: MYTextstyle.heading.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      color: Color.fromARGB(255, 165, 158, 158)),
                )),
            Positioned(
                top: h * 0.62,
                left: w * 0.45,
                child: Text(
                  "5:33 PM",
                  style: MYTextstyle.heading.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      color: Color.fromARGB(255, 165, 158, 158)),
                )),
            Positioned(
                top: h * 0.28,
                right: w * 0.03,
                child: Container(
                  width: w * 0.6,
                  height: h * 0.07,
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10.0)),
                    color: AppColors.mainred,
                  ),
                )),
            Positioned(
                top: h * 0.5,
                right: w * 0.03,
                child: Container(
                  width: w * 0.6,
                  height: h * 0.09,
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10.0)),
                    color: AppColors.mainred,
                  ),
                )),
            Positioned(
                top: h * 0.39,
                left: w * 0.03,
                child: Container(
                  width: w * 0.6,
                  height: h * 0.07,
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10.0)),
                    color: Color.fromARGB(255, 240, 243, 255),
                  ),
                )),
            Positioned(
                top: h * 0.65,
                left: w * 0.03,
                child: Container(
                  width: w * 0.7,
                  height: h * 0.09,
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10.0)),
                    color: Color.fromARGB(255, 240, 243, 255),
                  ),
                )),
            Positioned(
                bottom: h * 0.03,
                left: w * 0.025,
                child: Container(
                  width: w * 0.85,
                  height: h * 0.05,
                  decoration: BoxDecoration(
                    border: (Border.all(
                        width: 0.1, color: Color.fromARGB(255, 255, 255, 255))),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(5.0)),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: SizedBox(
                      width: w * 0.9,
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                              hintText: "   Type a message..."),
                        ),
                      )),
                )),
            Positioned(
                top: h * 0.845,
                left: w * 0.845,
                child: SizedBox(
                    width: w * 0.2,
                    height: h * 0.2,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RatingScreen()),
                        );
                      },
                      icon: Icon(
                        Icons.send,
                        color: AppColors.mainred,
                      ),
                    ))),
            Positioned(
                top: h * 0.3,
                right: w * 0.08,
                child: Text(
                  "Hello are you nearby?",
                  style: MYTextstyle.heading.copyWith(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 255, 255, 255)),
                )),
            Positioned(
                top: h * 0.41,
                left: w * 0.05,
                child: Text(
                  "I'll be there in few mins?",
                  style: MYTextstyle.heading.copyWith(
                      fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
                )),
            Positioned(
                top: h * 0.51,
                right: w * 0.08,
                child: Text(
                  "Ok, i am waiting at",
                  style: MYTextstyle.heading.copyWith(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 255, 255, 255)),
                )),
            Positioned(
                top: h * 0.54,
                right: w * 0.08,
                child: Text(
                  "Vinmark store",
                  style: MYTextstyle.heading.copyWith(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 255, 255, 255)),
                )),
            Positioned(
                top: h * 0.66,
                left: w * 0.08,
                child: Text(
                  "Sorry, i'm suck in traffic",
                  style: MYTextstyle.heading.copyWith(
                      fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
                )),
            Positioned(
                top: h * 0.69,
                left: w * 0.08,
                child: Text(
                  "Please give me a moment",
                  style: MYTextstyle.heading.copyWith(
                      fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
                )),
          ],
        ),
      ),
    );
  }
}
