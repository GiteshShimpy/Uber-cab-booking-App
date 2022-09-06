import 'package:aber_app/Screens/Ridebooking/ride_bookking_screen1.dart';
import 'package:aber_app/Screens/authentication/authentication_screen.dart';
import 'package:aber_app/Screens/friend_invitation/friend_invitation.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:aber_app/constant/colors.dart';
import 'package:aber_app/constant/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CoupenApplyScreen extends StatefulWidget {
  const CoupenApplyScreen({Key? key}) : super(key: key);

  @override
  State<CoupenApplyScreen> createState() => _CoupenApplyScreenState();
}

class _CoupenApplyScreenState extends State<CoupenApplyScreen> {
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
                  height: h * 0.7,
                )),
            Positioned(
                top: h * 0.06,
                left: w * 0.35,
                child: Text(
                  "Invite friends",
                  style: MYTextstyle.heading.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white),
                )),
            Positioned(
                top: h * 0.9,
                left: w * 0.05,
                child: SizedBox(
                  width: w * 0.9,
                  child: MyButton(
                    btnname: "Invite Friends",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FriendInvitationScreen()),
                      );
                    },
                  ),
                )),
            Positioned(
                top: h * 0.05,
                left: w * 0.02,
                child: SizedBox(
                    height: h * 0.5,
                    width: w * 0.99,
                    child: Image.asset("images/Artwork.png"))),
            Positioned(
                top: h * 0.045,
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
                top: h * 0.5,
                left: w * 0.27,
                child: Text(
                  "Invite Friends",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 17, 17, 17)),
                )),
            Positioned(
                top: h * 0.53,
                left: w * 0.1,
                child: Text(
                  "Get 3 Coupens each!",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 17, 17, 17)),
                )),
            Positioned(
                top: h * 0.59,
                left: w * 0.1,
                child: Text(
                  "When your friend sign up with your",
                  style: TextStyle(
                      fontSize: 18.0, color: Color.fromARGB(255, 17, 17, 17)),
                )),
            Positioned(
                top: h * 0.61,
                left: w * 0.15,
                child: Text(
                  "referral code, you'll both get 3.0",
                  style: TextStyle(
                      fontSize: 18.0, color: Color.fromARGB(255, 17, 17, 17)),
                )),
            Positioned(
                top: h * 0.63,
                left: w * 0.4,
                child: Text(
                  "coupens",
                  style: TextStyle(
                      fontSize: 18.0, color: Color.fromARGB(255, 17, 17, 17)),
                )),
            Positioned(
                top: h * 0.75,
                left: w * 0.05,
                child: Text(
                  "Share your invite code",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 17, 17, 17)),
                )),
            Positioned(
                top: h * 0.8,
                left: w * 0.05,
                child: SizedBox(width: w * 0.9, child: TextField())),
            Positioned(
                top: h * 0.8,
                left: w * 0.8,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FriendInvitationScreen()),
                      );
                    },
                    child: Icon(
                      Icons.share,
                      color: AppColors.mainred,
                    )))
          ],
        ),
      ),
    );
  }
}
