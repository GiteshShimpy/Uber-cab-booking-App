import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RideCart extends StatelessWidget {
  RideCart({Key? key, required this.imgname, required this.paymentmethodname})
      : super(key: key);

  String imgname;
  String paymentmethodname;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.2,
      height: h * 0.1,
      child: Column(
        children: [
          SizedBox(
            width: w * 0.08,
            height: h * 0.05,
            child: Image.asset(imgname),
          ),
          Text(
            paymentmethodname,
            style: TextStyle(color: Color.fromARGB(255, 207, 205, 205)),
          ),
        ],
      ),
    );
  }
}
