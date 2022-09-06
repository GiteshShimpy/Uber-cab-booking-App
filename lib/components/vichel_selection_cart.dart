import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VichelCart extends StatelessWidget {
  VichelCart(
      {Key? key,
      required this.vichelname,
      required this.vichelprice,
      required this.vichel,
      required this.vicheltime,
      required this.vichelsubname})
      : super(key: key);

  String vichelprice;
  String vichelname;
  String vichelsubname;
  String vicheltime;
  String vichel;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Container(
      width: w * 0.9,
      height: h * 0.07,
      child: Stack(
        children: [
          Positioned(
              top: h * 0.02,
              left: w * 0.05,
              child: SizedBox(
                  width: w * 0.12,
                  height: h * 0.055,
                  child: Image.asset(vichel))),
          Positioned(
              top: h * 0.03,
              left: w * 0.2,
              child: Text(
                vichelname,
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w900),
              )),
          Positioned(
              top: h * 0.05,
              left: w * 0.2,
              child: Text(
                vichelsubname,
                style: TextStyle(
                    fontSize: 13.0, color: Color.fromARGB(255, 190, 190, 190)),
              )),
          Positioned(
              top: h * 0.029,
              left: w * 0.75,
              child: Text(
                vichelprice,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 211, 16, 74)),
              )),
          Positioned(
              top: h * 0.05,
              left: w * 0.8,
              child: Text(
                vicheltime,
                style: TextStyle(
                    fontSize: 13.0, color: Color.fromARGB(255, 190, 190, 190)),
              )),
        ],
      ),
    );
  }
}
