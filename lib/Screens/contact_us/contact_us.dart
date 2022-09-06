import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                    SizedBox(
                      width: 60.0,
                      height: 50.0,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0),
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
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12.0, top: 5.0),
                      child: Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 140, 150, 163),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 350.0,
                  height: 50.0,
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(18.0)),
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "    Enter your name",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 140, 150, 163),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12.0, top: 10.0),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 140, 150, 163),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 350.0,
                  height: 50.0,
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(18.0)),
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "    Enter your Email address",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 140, 150, 163),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12.0, top: 10.0),
                      child: Text(
                        "Complain Category",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 140, 150, 163),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 350.0,
                  height: 50.0,
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(18.0)),
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "   Bug Report",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 140, 150, 163),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12.0, top: 10.0),
                      child: Text(
                        "Message",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 140, 150, 163),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 350.0,
                  height: 100.0,
                  margin: EdgeInsets.only(top: 10.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(18.0)),
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "    Enter your message",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 140, 150, 163),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12.0, top: 13.0),
                      child: Text(
                        "Contact Us At",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromARGB(255, 193, 29, 29),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 5.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 238, 121, 108),
                    ),
                    child: Image.asset("images/support.png"),
                  ),
                  Container(
                    width: 160.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 5.0, top: 10.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Support",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("support@mooner.com.org",
                              style: TextStyle(fontSize: 12.0)),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 5.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 217, 251, 224),
                    ),
                    child: Image.asset("images/customer.png"),
                  ),
                  Container(
                    width: 160.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 5.0, top: 10.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Customer Support",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("customer@mooner.com.org",
                              style: TextStyle(fontSize: 12.0)),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 5.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 209, 247, 255),
                    ),
                    child: Image.asset("images/transaction.png"),
                  ),
                  Container(
                    width: 160.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 5.0, top: 10.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Transaction related",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("accounts@mooner.com.org",
                              style: TextStyle(fontSize: 12.0)),
                        ],
                      ),
                    ]),
                  ),
                ]),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 350.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(25.0)),
                    color: Color.fromARGB(255, 254, 218, 41),
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 193, 29, 29),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ))),
                      onPressed: () {},
                      child: Text("Contact us",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ))),
                ),
              ]),
        ))));
  }
}
