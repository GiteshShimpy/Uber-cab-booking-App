import 'package:aber_app/Screens/Ridebooking/ride_bookking_screen1.dart';
import 'package:aber_app/Screens/authentication/authentication_screen.dart';
import 'package:aber_app/components/Friend_invitation_cart.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:aber_app/constant/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class FriendInvitationScreen extends StatefulWidget {
  const FriendInvitationScreen({Key? key}) : super(key: key);

  @override
  State<FriendInvitationScreen> createState() => _FriendInvitationScreenState();
}

class _FriendInvitationScreenState extends State<FriendInvitationScreen> {
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
                top: h * 0.05,
                left: w * 0.35,
                child: Text(
                  "Invite Friend",
                  style: MYTextstyle.heading.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                )),
            Positioned(
                top: h * 0.04,
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      size: 25.0,
                      Icons.arrow_back,
                      color: Colors.white,
                    ))),
            Positioned(
                top: h * 0.13,
                left: w * 0.05,
                child: Container(
                  width: w * 0.9,
                  height: h * 0.05,
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(15.0)),
                    color: Color.fromARGB(122, 255, 255, 255),
                  ),
                  child: SizedBox(
                      width: w * 0.05,
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                              hintText:
                                  "          Enter your location here..."),
                        ),
                      )),
                )),
            Positioned(
                top: h * 0.22,
                left: w * 0.05,
                child: Column(
                  children: [
                    FriendInvitationCart(
                        img: "images/Oval.png",
                        imgname: "Johnny Rios",
                        img2: "images/checked.png"),
                    Divider(),
                    FriendInvitationCart(
                        img: "images/Oval1.png",
                        imgname: "Alfred Hodges",
                        img2: "images/checked.png"),
                    Divider(),
                    FriendInvitationCart(
                        img: "images/Oval2.png",
                        imgname: "Samule Hammond",
                        img2: "images/checked.png"),
                    Divider(),
                    FriendInvitationCart(
                        img: "images/Oval3.png",
                        imgname: "Dora Hines",
                        img2: "images/unchecked.png"),
                    Divider(),
                    FriendInvitationCart(
                        img: "images/Oval4.png",
                        imgname: "Carolyn Francis",
                        img2: "images/checked.png"),
                    Divider(),
                    FriendInvitationCart(
                        img: "images/Oval5.png",
                        imgname: "Isaiah McGee",
                        img2: "images/checked.png"),
                    Divider(),
                    FriendInvitationCart(
                        img: "images/Oval6.png",
                        imgname: "Mark Holmes",
                        img2: "images/unchecked.png"),
                    Divider(
                      height: h * 0.02,
                    ),
                    FriendInvitationCart(
                        img: "images/Oval7.png",
                        imgname: "Johnny Rios",
                        img2: "images/checked.png"),
                    Divider(),
                    FriendInvitationCart(
                        img: "images/Oval2.png",
                        imgname: "Johnny Rios",
                        img2: "images/checked.png"),
                    Divider(),
                    FriendInvitationCart(
                        img: "images/Oval3.png",
                        imgname: "Johnny Rios",
                        img2: "images/unchecked.png"),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
