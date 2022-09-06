import 'package:aber_app/Screens/booking_successful/booking_successful.dart';
import 'package:aber_app/Screens/chat_screen/chat_screen.dart';
import 'package:aber_app/Screens/profile_screen/profile_screen.dart';
import 'package:aber_app/Screens/vichel_selection/vichel%20_selection.dart';
import 'package:aber_app/components/cancle_button.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:aber_app/components/ride_cart.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RideCancle extends StatefulWidget {
  RideCancle({Key? key}) : super(key: key);

  @override
  State<RideCancle> createState() => _RideCancleState();
}

class _RideCancleState extends State<RideCancle> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: Container(
      width: w,
      height: h,
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kGooglePlex,
          ),
          Positioned(
              bottom: h * 0.05,
              left: w * 0.105,
              child: Container(
                width: w * 0.75,
                height: h * 0.4,
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Color.fromARGB(255, 255, 253, 253),
                ),
              )),
          Positioned(
              bottom: h * 0.03,
              left: w * 0.065,
              child: Container(
                width: w * 0.83,
                height: h * 0.4,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 209, 200, 200),
                        spreadRadius: 1.0,
                        blurRadius: 5.0,
                        blurStyle: BlurStyle.normal),
                  ],
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Color.fromARGB(255, 253, 252, 252),
                ),
              )),
          Positioned(
              bottom: h * 0.01,
              left: w * 0.03,
              child: Container(
                width: w * 0.92,
                height: h * 0.4,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 209, 200, 200),
                        spreadRadius: 1.0,
                        blurRadius: 5.0,
                        blurStyle: BlurStyle.normal),
                  ],
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Color.fromARGB(255, 247, 243, 243),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: h * 0.025,
                        left: w * 0.05,
                        child: SizedBox(
                            width: w * 0.12,
                            height: h * 0.055,
                            child: Image.asset("images/rp.png"))),
                    Positioned(
                        top: h * 0.02,
                        left: w * 0.2,
                        child: Text(
                          "Gregory Smith",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w900),
                        )),
                    Positioned(
                        top: h * 0.05,
                        left: w * 0.2,
                        child: SizedBox(
                            width: w * 0.05,
                            height: h * 0.02,
                            child: Image.asset("images/Shape.png"))),
                    Positioned(
                        top: h * 0.05,
                        left: w * 0.25,
                        child: Text(
                          "4.9",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 190, 190, 190)),
                        )),
                    Positioned(
                      top: h * 0.025,
                      left: w * 0.6,
                      child: SizedBox(
                        width: w * 0.11,
                        height: h * 0.06,
                        child: FloatingActionButton(
                          backgroundColor: Color.fromARGB(255, 59, 29, 193),
                          onPressed: () {},
                          child: Icon(Icons.message),
                        ),
                      ),
                    ),
                    Positioned(
                      top: h * 0.025,
                      left: w * 0.75,
                      child: SizedBox(
                        width: w * 0.11,
                        height: h * 0.06,
                        child: FloatingActionButton(
                          backgroundColor: Color.fromARGB(255, 193, 29, 29),
                          onPressed: () {},
                          child: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    Positioned(
                        top: h * 0.1,
                        child: Container(
                          width: w,
                          height: h * 0.15,
                          decoration: BoxDecoration(
                            border:
                                (Border.all(width: 0.1, color: Colors.white)),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(0.0)),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                    Positioned(
                        left: w * 0.03,
                        top: h * 0.11,
                        child: SizedBox(
                            width: w * 0.09,
                            height: h * 0.05,
                            child: Image.asset("images/r1.png"))),
                    Positioned(
                        left: w * 0.121,
                        top: h * 0.11,
                        child: SizedBox(
                            width: w * 0.09,
                            height: h * 0.05,
                            child: Image.asset("images/r2.png"))),
                    Positioned(
                        left: w * 0.21,
                        top: h * 0.11,
                        child: SizedBox(
                            width: w * 0.09,
                            height: h * 0.05,
                            child: Image.asset("images/r3.png"))),
                    Positioned(
                        left: w * 0.35,
                        top: h * 0.13,
                        child: Text(
                          "25 recommended",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )),
                    Positioned(
                        left: w * 0.05,
                        top: h * 0.22,
                        child: SizedBox(
                            width: w * 0.15,
                            height: h * 0.1,
                            child: Image.asset("images/car.png"))),
                    Positioned(
                      top: h * 0.25,
                      left: w * 0.25,
                      child: Text(
                        "Distance",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 190, 190, 190)),
                      ),
                    ),
                    Positioned(
                      top: h * 0.25,
                      left: w * 0.45,
                      child: Text(
                        "Time",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 190, 190, 190)),
                      ),
                    ),
                    Positioned(
                      top: h * 0.25,
                      left: w * 0.65,
                      child: Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 190, 190, 190)),
                      ),
                    ),
                    Positioned(
                        top: h * 0.27,
                        left: w * 0.25,
                        child: Text(
                          "0.2 km",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w900),
                        )),
                    Positioned(
                        top: h * 0.27,
                        left: w * 0.45,
                        child: Text(
                          "2 min",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w900),
                        )),
                    Positioned(
                        top: h * 0.27,
                        left: w * 0.65,
                        child: Text(
                          "\$25.00",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w900),
                        )),
                    Positioned(
                        top: h * 0.32,
                        left: w * 0.03,
                        width: w * 0.85,
                        child: CancleButton(
                            onpress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()),
                              );
                            },
                            btnname: "cancleRequest")),
                  ],
                ),
              )),
        ],
      ),
    )));
  }
}
