import 'package:flutter/material.dart';

class NotificationDemo extends StatefulWidget {
  NotificationDemo({Key? key}) : super(key: key);

  @override
  State<NotificationDemo> createState() => _NotificationDemoState();
}

class _NotificationDemoState extends State<NotificationDemo> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin: EdgeInsets.only(top: 30.0, left: 15.0),
                      decoration: BoxDecoration(
                        border: (Border.all(width: 0.1, color: Colors.white)),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(45.0)),
                        color: Color.fromARGB(255, 193, 29, 29),
                      ),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0.0),
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 193, 29, 29),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ))),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "<",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.0,
                ),
                Row(
                  children: [
                    Text(
                      "   Notification",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 35.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Image.asset("images/Shape.png"),
                  ),
                  Container(
                    width: w * 0.7,
                    height: h * 0.08,
                    margin: EdgeInsets.only(left: 5.0, top: 35.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("System",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("Your booking #1234 has..",
                              style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 35.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Image.asset("images/Shape.png"),
                  ),
                  Container(
                    width: w * 0.7,
                    height: h * 0.08,
                    margin: EdgeInsets.only(left: 5.0, top: 35.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Promotion",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("Invite friends- Get 3 coupons",
                              style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 35.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Image.asset("images/Shape.png"),
                  ),
                  Container(
                    width: w * 0.7,
                    height: h * 0.08,
                    margin: EdgeInsets.only(left: 5.0, top: 35.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Promotion",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("Invite friends- Get 3 coupons",
                              style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 35.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Image.asset("images/Shape.png"),
                  ),
                  Container(
                    width: w * 0.7,
                    height: h * 0.08,
                    margin: EdgeInsets.only(left: 5.0, top: 35.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("System",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("Your booking #1234 has..",
                              style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 35.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Image.asset("images/Shape.png"),
                  ),
                  Container(
                    width: w * 0.7,
                    height: h * 0.08,
                    margin: EdgeInsets.only(left: 5.0, top: 35.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("System",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("Your booking #1234 has..",
                              style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 35.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Image.asset("images/Shape.png"),
                  ),
                  Container(
                    width: w * 0.7,
                    height: h * 0.08,
                    margin: EdgeInsets.only(left: 5.0, top: 35.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Promotion",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("Invite friends- Get 3 coupons",
                              style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
