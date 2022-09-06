import 'package:aber_app/Screens/perticular_ride/perticular_ride.dart';
import 'package:aber_app/Screens/profile_screen/profile_screen.dart';
import 'package:aber_app/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationApply extends StatefulWidget {
  LocationApply({Key? key}) : super(key: key);

  @override
  State<LocationApply> createState() => _LocationApplyState();
}

class _LocationApplyState extends State<LocationApply> {
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
              top: h * 0.05,
              left: w * 0.1,
              child: Container(
                width: w * 0.8,
                height: h * 0.05,
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Colors.white,
                ),
                child: SizedBox(
                    width: w * 0.05,
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: "          Enter your location here..."),
                      ),
                    )),
              )),
          Positioned(
              top: h * 0.056,
              left: w * 0.13,
              child: Text(
                "<",
                style: TextStyle(
                    fontSize: 25.0, color: Color.fromARGB(255, 119, 115, 115)),
              )),
          Positioned(
              top: h * 0.063,
              left: w * 0.81,
              child: Text(
                "X",
                style: TextStyle(
                    fontSize: 16.0, color: Color.fromARGB(255, 119, 115, 115)),
              )),
          Positioned(
              bottom: h * 0.0,
              height: h * 0.1,
              width: w,
              child: MyButton(
                  onpress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PerticularRide()),
                    );
                  },
                  btnname: "Apply"))
        ],
      ),
    )));
  }
}
