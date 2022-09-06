import 'package:aber_app/Screens/profile_screen/profile_screen.dart';
import 'package:aber_app/Screens/vichel_selection/vichel%20_selection.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:aber_app/components/ride_cart.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PerticularRide extends StatefulWidget {
  PerticularRide({Key? key}) : super(key: key);

  @override
  State<PerticularRide> createState() => _PerticularRideState();
}

class _PerticularRideState extends State<PerticularRide> {
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
              left: w * 0.025,
              child: Container(
                width: w * 0.95,
                height: h * 0.25,
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Color.fromARGB(255, 247, 243, 243),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: h * 0.02,
                        left: w * 0.05,
                        child: SizedBox(
                            width: w * 0.12,
                            height: h * 0.055,
                            child: Image.asset("images/car.png"))),
                    Positioned(
                        top: h * 0.03,
                        left: w * 0.2,
                        child: Text(
                          "Just go",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.w900),
                        )),
                    Positioned(
                        top: h * 0.05,
                        left: w * 0.2,
                        child: Text(
                          "Near by you",
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Color.fromARGB(255, 190, 190, 190)),
                        )),
                    Positioned(
                        top: h * 0.029,
                        left: w * 0.75,
                        child: Text(
                          "\$25.00",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 211, 16, 74)),
                        )),
                    Positioned(
                        top: h * 0.05,
                        left: w * 0.8,
                        child: Text(
                          "2 min",
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Color.fromARGB(255, 190, 190, 190)),
                        )),
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
                      child: RideCart(
                        imgname: "images/wallet.png",
                        paymentmethodname: 'Payment',
                      ),
                    ),
                    Positioned(
                      left: w * 0.4,
                      top: h * 0.11,
                      child: RideCart(
                        imgname: "images/wallet.png",
                        paymentmethodname: 'Promo code',
                      ),
                    ),
                    Positioned(
                      left: w * 0.7,
                      top: h * 0.11,
                      child: RideCart(
                        imgname: "images/option.png",
                        paymentmethodname: 'Option',
                      ),
                    ),
                    Positioned(
                        top: h * 0.2,
                        left: w * 0.025,
                        width: w * 0.9,
                        child: MyButton(
                            onpress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VichelSelection()),
                              );
                            },
                            btnname: "Request")),
                  ],
                ),
              )),
        ],
      ),
    )));
  }
}
