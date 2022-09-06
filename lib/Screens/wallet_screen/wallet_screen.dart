import 'package:aber_app/Screens/notification_screen/notification_screen.dart';
import 'package:aber_app/Screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WalletDemo extends StatefulWidget {
  const WalletDemo({Key? key}) : super(key: key);

  @override
  State<WalletDemo> createState() => _WalletDemoState();
}

class _WalletDemoState extends State<WalletDemo> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: DrawerScreen(),
        appBar: AppBar(
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationDemo()));
              },
              child: Icon(
                size: 30.0,
                Icons.notifications,
                color: Color.fromARGB(255, 193, 29, 29),
              ),
            ),
          ],
          centerTitle: true,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin:
                          EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0.0),
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 236, 235, 235),
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
                              color: Color.fromARGB(255, 193, 29, 29),
                            ),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 18.0,
                      height: 10.0,
                    ),
                    Text(
                      "Wallet",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                DefaultTabController(
                    length: 4, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              labelColor: Color.fromARGB(255, 193, 29, 29),
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(text: 'View summery'),
                                Tab(text: 'KYC'),
                                Tab(text: 'Add Bank Account'),
                                Tab(text: 'Wallet'),
                              ],
                            ),
                          ),
                          Container(
                              height: h * 0.4, //height of TabBarView
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 0.5))),
                              child: TabBarView(children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Send",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 193, 29, 29),
                                            ),
                                          ),
                                          style: ButtonStyle(
                                              elevation:
                                                  MaterialStateProperty.all(
                                                      0.0),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white)),
                                        ),
                                        Text("Recieved"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15.0),
                                        Text(
                                          "40 Tokens",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15.0),
                                        Text(
                                          "Total rides",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color.fromARGB(
                                                255, 193, 29, 29),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Send",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 193, 29, 29),
                                            ),
                                          ),
                                          style: ButtonStyle(
                                              elevation:
                                                  MaterialStateProperty.all(
                                                      0.0),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white)),
                                        ),
                                        Text("Recieved"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15.0),
                                        Text(
                                          "40 Tokens",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15.0),
                                        Text(
                                          "Total rides",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color.fromARGB(
                                                255, 193, 29, 29),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Send",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 193, 29, 29),
                                            ),
                                          ),
                                          style: ButtonStyle(
                                              elevation:
                                                  MaterialStateProperty.all(
                                                      0.0),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white)),
                                        ),
                                        Text("Recieved"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15.0),
                                        Text(
                                          "40 Tokens",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15.0),
                                        Text(
                                          "Total rides",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color.fromARGB(
                                                255, 193, 29, 29),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Send",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 193, 29, 29),
                                            ),
                                          ),
                                          style: ButtonStyle(
                                              elevation:
                                                  MaterialStateProperty.all(
                                                      0.0),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white)),
                                        ),
                                        Text("Recieved"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15.0),
                                        Text(
                                          "40 Tokens",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15.0),
                                        Text(
                                          "Total rides",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color.fromARGB(
                                                255, 193, 29, 29),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                              ]))
                        ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
