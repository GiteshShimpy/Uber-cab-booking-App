import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FriendInvitationCart extends StatelessWidget {
  FriendInvitationCart(
      {Key? key, required this.img, required this.imgname, required this.img2})
      : super(key: key);
  String img;
  String imgname;
  String img2;
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      height: h * 0.06,
      child: Row(
        children: [
          Image.asset(img),
          SizedBox(
            width: w * 0.05,
          ),
          SizedBox(
            width: w * 0.61,
            child: Text(
              imgname,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          SizedBox(),
          Container(
            width: w * 0.1,
            height: h * 0.05,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: (Border.all(width: 0.1, color: Colors.white)),
              borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
              color: Color.fromARGB(255, 216, 206, 206),
            ),
            child: SizedBox(
                width: w * 0.05, height: h * 0.05, child: Image.asset(img2)),
          )
        ],
      ),
    );
  }
}
