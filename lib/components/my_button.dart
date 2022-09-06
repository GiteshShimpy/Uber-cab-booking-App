import 'package:aber_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.onpress, required this.btnname})
      : super(key: key);
  final VoidCallback onpress;
  final String btnname;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
          AppColors.mainred,
        )),
        onPressed: onpress,
        child: Text(
          btnname,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ));
  }
}
