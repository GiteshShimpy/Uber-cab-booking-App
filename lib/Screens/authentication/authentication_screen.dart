import 'dart:ui';

import 'package:aber_app/Screens/verification_screen/varification_screen.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:aber_app/components/my_text_field.dart';
import 'package:aber_app/constant/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 232, 232),
      body: Container(
        width: w,
        height: h,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                  width: w,
                  height: h * 0.4,
                  color: Color.fromARGB(255, 193, 29, 29),
                  child: Stack(
                    children: [
                      Positioned(
                          top: h * 0.1,
                          child: Container(
                              height: h * 0.36,
                              width: w * 1.0,
                              child: Image.asset("images/graph.png"))),
                      Positioned(
                          top: h * 0.2,
                          left: w * 0.0,
                          child: Container(
                              height: h * 0.25,
                              width: w * 0.4,
                              child: Image.asset("images/graph2.png"))),
                      Positioned(
                          top: h * 0.2,
                          left: w * 0.4,
                          child: Container(
                              height: h * 0.25,
                              width: w * 0.6,
                              child: Image.asset("images/graph3.png"))),
                    ],
                  )),
            ),
            Positioned(
                top: h * 0.35,
                left: w * 0.05,
                child: Container(
                  width: w * 0.9,
                  height: h * 0.46,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(25.0)),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Stack(
                    children: [
                      DefaultTabController(
                        length: 2,
                        child: Scaffold(
                          backgroundColor: Colors.white,
                          appBar: AppBar(
                              elevation: 0.0,
                              toolbarHeight: h * 0.0,
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              bottom: TabBar(
                                  indicatorColor:
                                      Color.fromARGB(255, 193, 29, 29),
                                  tabs: [
                                    Tab(
                                      child: Text(
                                        "Sign up",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Tab(
                                      child: Text("Sign in",
                                          style: MYTextstyle.heading),
                                    ),
                                  ])),
                          body: TabBarView(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: h * 0.05,
                                  ),
                                  SizedBox(
                                    height: h * 0.06,
                                    width: w * 0.8,
                                    child: MyTextFormField(
                                        hinttxt: '',
                                        lbltxt: 'Email',
                                        prefixicon: Icons.mail),
                                  ),
                                  SizedBox(
                                    height: h * 0.02,
                                  ),
                                  SizedBox(
                                    height: h * 0.06,
                                    width: w * 0.8,
                                    child: MyTextFormField(
                                        hinttxt: '',
                                        lbltxt: 'Mobile Number',
                                        prefixicon: Icons.phone),
                                  ),
                                  SizedBox(
                                    height: h * 0.05,
                                  ),
                                  SizedBox(
                                    width: w * 0.8,
                                    height: h * 0.05,
                                    child: MyButton(
                                      btnname: "Verify Now",
                                      onpress: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VarificationScreen()),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: h * 0.03,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: w * 0.03,
                                      ),
                                      Text(
                                        "Login with your phone number",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: h * 0.03,
                                  ),
                                  SizedBox(
                                    height: h * 0.06,
                                    width: w * 0.8,
                                    child: MyTextFormField(
                                        hinttxt: '',
                                        lbltxt: 'Mobile Number',
                                        prefixicon: Icons.phone),
                                  ),
                                  SizedBox(
                                    height: h * 0.07,
                                  ),
                                  SizedBox(
                                    width: w * 0.8,
                                    height: h * 0.05,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                          Color.fromARGB(255, 193, 29, 29),
                                        )),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    VarificationScreen()),
                                          );
                                        },
                                        child: Text(
                                          "Next",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0),
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
                top: h * 0.85,
                left: w * 0.05,
                child: SizedBox(
                  width: w * 0.9,
                  height: h * 0.06,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VarificationScreen()),
                        );
                      },
                      child: Text(
                        "Connect with facebook",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      )),
                )),
            Positioned(
                top: h * 0.95,
                left: w * 0.085,
                child: Text(
                  "By clicking star agree to our",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color.fromARGB(255, 43, 40, 40),
                  ),
                )),
            Positioned(
                top: h * 0.93,
                left: w * 0.52,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms and conditions",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
