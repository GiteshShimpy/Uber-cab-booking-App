import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTextFormField extends StatelessWidget {
  final String lbltxt;
  final String hinttxt;
  final IconData prefixicon ;
  const MyTextFormField({Key? key, required this.lbltxt, required this.hinttxt,required this.prefixicon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
        prefixIcon: Icon(prefixicon),
        hintStyle: TextStyle(),
        labelText: lbltxt,
      ),
    );
  }
}
