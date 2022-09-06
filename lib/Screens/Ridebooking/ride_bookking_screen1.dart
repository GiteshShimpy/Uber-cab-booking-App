import 'package:aber_app/Screens/location_apply/location_apply.dart';
import 'package:aber_app/Screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo1 extends StatefulWidget {
  GoogleMapDemo1({Key? key}) : super(key: key);

  @override
  State<GoogleMapDemo1> createState() => _GoogleMapDemo1State();
}

class _GoogleMapDemo1State extends State<GoogleMapDemo1> {
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
            top: h * 0.6,
            right: w * 0.05,
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 193, 29, 29),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationApply()),
                );
              },
              child: Icon(Icons.arrow_circle_right),
            ),
          ),
          Positioned(
              top: h * 0.1,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DrawerScreen()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 30.0,
                    child: Container(
                        child: Image.asset(
                      "images/man.png",
                      fit: BoxFit.cover,
                    )),
                  ))),
          Positioned(
              bottom: h * 0.0,
              left: w * 0.01,
              child: Container(
                width: w * 0.98,
                height: h * 0.2,
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
                        top: h * 0.006,
                        left: w * 0.09,
                        child: Text(
                          "Pickup",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 180, 180)),
                        )),
                    Positioned(
                        top: h * 0.006,
                        left: w * 0.4,
                        child: Container(
                          width: w * 0.15,
                          height: h * 0.01,
                          decoration: BoxDecoration(
                            border:
                                (Border.all(width: 0.1, color: Colors.white)),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(15.0)),
                            color: Color.fromARGB(255, 99, 95, 95),
                          ),
                        )),
                    Positioned(
                        top: h * 0.035,
                        left: w * 0.09,
                        child: SizedBox(
                            width: w * 0.8,
                            child: TextFormField(
                              decoration: InputDecoration.collapsed(
                                  hintText: "My current location"),
                            ))),
                    Positioned(
                        top: h * 0.07,
                        left: w * 0.09,
                        child: Text(
                          "Drop-off",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 180, 180)),
                        )),
                    Positioned(
                        top: h * 0.101,
                        left: w * 0.09,
                        child: SizedBox(
                            width: w * 0.8,
                            child: TextFormField(
                              decoration: InputDecoration.collapsed(
                                  hintText: "105 William St,Chicago,US"),
                            ))),
                    Positioned(
                        top: h * 0.1,
                        left: w * 0.01,
                        child: Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 193, 29, 29),
                        )),
                    Positioned(
                        top: h * 0.035,
                        left: w * 0.015,
                        child: Icon(
                          size: 22.0,
                          Icons.album_outlined,
                          color: Color.fromARGB(255, 193, 29, 29),
                        )),
                    Positioned(
                        top: h * 0.15,
                        left: w * 0.015,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              border:
                                  (Border.all(width: 0.1, color: Colors.white)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 209, 200, 200),
                                    spreadRadius: 3.0,
                                    blurRadius: 5.0,
                                    blurStyle: BlurStyle.normal),
                              ]),
                          child: Center(
                            child: Text("university of washington"),
                          ),
                        )),
                    Positioned(
                        top: h * 0.15,
                        left: w * 0.48,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              border:
                                  (Border.all(width: 0.1, color: Colors.white)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 209, 200, 200),
                                    spreadRadius: 3.0,
                                    blurRadius: 5.0,
                                    blurStyle: BlurStyle.normal),
                              ]),
                          child: Center(
                            child: Text("Woodland park"),
                          ),
                        )),
                    Positioned(
                        top: h * 0.15,
                        left: w * 0.8,
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              border:
                                  (Border.all(width: 0.1, color: Colors.white)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 209, 200, 200),
                                    spreadRadius: 3.0,
                                    blurRadius: 5.0,
                                    blurStyle: BlurStyle.normal),
                              ]),
                          child: Center(
                            child: Text("husky"),
                          ),
                        ))
                  ],
                ),
              ))
        ],
      ),
    )));
  }
}
