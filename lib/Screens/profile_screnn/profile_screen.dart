import 'dart:ui';
import 'package:aber_app/Screens/notification_screen/notification_screen.dart';
import 'package:flutter/material.dart';

import '../profile_screen/profile_screen.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var isSwitched;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        drawer: DrawerScreen(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 60.0,
                      width: 400.0,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: Container(
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            elevation:
                                                MaterialStateProperty.all(0.0),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 236, 235, 235),
                                            ),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ))),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "<",
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            color: Color.fromARGB(
                                                255, 193, 29, 29),
                                          ),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              top: 20.0,
                              left: 155.0,
                              child: Text(
                                "profile",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      )),
                  Column(
                    children: [
                      Container(
                          //here will be image
                          ),
                      Row(
                        children: [
                          SizedBox(width: 10.0),
                          Text(
                            "Active Status",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          SizedBox(width: 150.0),
                          Switch(
                            value: isSwitched ?? true,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            activeTrackColor: Colors.green,
                            activeColor: Color.fromARGB(255, 249, 255, 249),
                          ),
                        ],
                      ),
                      Container(
                          height: 50.0,
                          margin: EdgeInsets.only(top: 10.0),
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            cursorColor: Color.fromARGB(255, 193, 29, 29),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 171, 177, 202)),
                              labelText: "Name",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 193, 29, 29),
                                ),
                              ),
                            ),
                          )),
                      Container(
                          height: 50.0,
                          margin: EdgeInsets.only(top: 10.0),
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            cursorColor: Color.fromARGB(255, 193, 29, 29),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 171, 177, 202)),
                              labelText: "Phone",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 193, 29, 29),
                                ),
                              ),
                            ),
                          )),
                      Container(
                          height: 50.0,
                          margin: EdgeInsets.only(top: 10.0),
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            cursorColor: Color.fromARGB(255, 193, 29, 29),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 171, 177, 202)),
                              labelText: "Email",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 193, 29, 29),
                                ),
                              ),
                            ),
                          )),
                      Container(
                          height: 50.0,
                          margin: EdgeInsets.only(top: 10.0),
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            cursorColor: Color.fromARGB(255, 193, 29, 29),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 171, 177, 202)),
                              labelText: "Postal Code",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 193, 29, 29),
                                ),
                              ),
                            ),
                          )),
                      Container(
                          height: 50.0,
                          margin: EdgeInsets.only(top: 10.0),
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            cursorColor: Color.fromARGB(255, 193, 29, 29),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 171, 177, 202)),
                              labelText: "Password",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 193, 29, 29),
                                ),
                              ),
                            ),
                          )),
                      Container(
                          height: 50.0,
                          margin: EdgeInsets.only(top: 10.0),
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            cursorColor: Color.fromARGB(255, 193, 29, 29),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 171, 177, 202)),
                              labelText: "Socel LInk",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 193, 29, 29),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
