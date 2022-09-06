import 'package:aber_app/Screens/perticular_ride/perticular_ride.dart';
import 'package:aber_app/Screens/profile_screen/profile_screen.dart';
import 'package:aber_app/Screens/ride_confirm/ride_confirm.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PromoCodeScreen extends StatefulWidget {
  PromoCodeScreen({Key? key}) : super(key: key);

  @override
  State<PromoCodeScreen> createState() => _PromoCodeScreenState();
}

class _PromoCodeScreenState extends State<PromoCodeScreen> {
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
              bottom: h * 0.0,
              left: w * 0.01,
              child: Container(
                width: w * 0.98,
                height: h * 0.35,
                decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(15.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 209, 200, 200),
                          spreadRadius: 3.0,
                          blurRadius: 5.0,
                          blurStyle: BlurStyle.normal),
                    ]),
                child: Stack(
                  children: [
                    Positioned(
                        top: h * 0.02,
                        left: w * 0.35,
                        child: Text(
                          "Promo Code",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w900),
                        )),
                    Positioned(
                        top: h * 0.1,
                        left: w * 0.025,
                        child: Container(
                          width: w * 0.9,
                          height: h * 0.05,
                          decoration: BoxDecoration(
                            border: (Border.all(
                                width: 0.1,
                                color: Color.fromARGB(255, 0, 0, 0))),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(5.0)),
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: SizedBox(
                              width: w * 0.8,
                              child: Center(
                                child: TextFormField(
                                  decoration: InputDecoration.collapsed(
                                      hintText: "   Input promo code"),
                                ),
                              )),
                        )),
                  ],
                ),
              )),
          Positioned(
              bottom: h * 0.1,
              left: w * 0.02,
              height: h * 0.05,
              width: w * 0.95,
              child: MyButton(
                  onpress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RideConfirm()),
                    );
                  },
                  btnname: "Apply"))
        ],
      ),
    )));
  }
}
