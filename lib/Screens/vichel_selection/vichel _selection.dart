import 'package:aber_app/Screens/profile_screen/profile_screen.dart';
import 'package:aber_app/Screens/promo_code/promo_code_screen.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:aber_app/components/ride_cart.dart';
import 'package:aber_app/components/vichel_selection_cart.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class VichelSelection extends StatefulWidget {
  VichelSelection({Key? key}) : super(key: key);

  @override
  State<VichelSelection> createState() => _VichelSelectionState();
}

class _VichelSelectionState extends State<VichelSelection> {
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
                height: h * 0.55,
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Color.fromARGB(255, 247, 243, 243),
                ),
                child: Column(
                  children: [
                    VichelCart(
                      vichel: 'images/car.png',
                      vichelname: 'Just go',
                      vichelprice: '\$25.0',
                      vichelsubname: 'Near by you',
                      vicheltime: '2 min',
                    ),
                    VichelCart(
                      vichel: 'images/taxi.png',
                      vichelname: 'Just go',
                      vichelprice: '\$25.0',
                      vichelsubname: 'Near by you',
                      vicheltime: '2 min',
                    ),
                    VichelCart(
                      vichel: 'images/cab.png',
                      vichelname: 'Just go',
                      vichelprice: '\$25.0',
                      vichelsubname: 'Near by you',
                      vicheltime: '2 min',
                    ),
                    VichelCart(
                      vichel: 'images/sp.png',
                      vichelname: 'Just go',
                      vichelprice: '\$25.0',
                      vichelsubname: 'Near by you',
                      vicheltime: '2 min',
                    ),
                    VichelCart(
                      vichel: 'images/bike.png',
                      vichelname: 'Just go',
                      vichelprice: '\$25.0',
                      vichelsubname: 'Near by you',
                      vicheltime: '2 min',
                    ),
                    VichelCart(
                      vichel: 'images/taxi.png',
                      vichelname: 'Just go',
                      vichelprice: '\$25.0',
                      vichelsubname: 'Near by you',
                      vicheltime: '2 min',
                    ),
                    VichelCart(
                      vichel: 'images/cab.png',
                      vichelname: 'Just go',
                      vichelprice: '\$25.0',
                      vichelsubname: 'Near by you',
                      vicheltime: '2 min',
                    ),
                  ],
                ),
              )),
          Positioned(
            top: h * 0.05,
            right: w * 0.05,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 193, 29, 29),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PromoCodeScreen()),
                );
              },
              child: Icon(Icons.arrow_circle_right),
            ),
          ),
        ],
      ),
    )));
  }
}
