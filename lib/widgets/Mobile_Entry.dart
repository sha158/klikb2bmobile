import 'package:flutter/material.dart';

class MyTextFromField extends StatelessWidget {
  final String hinttext;
  bool obscureText = false;
  MyTextFromField({required this.hinttext, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        obscureText: obscureText,
        decoration: InputDecoration(
            fillColor: Colors.grey[100],
            filled: true,
            hintText: hinttext,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            )),
      ),
    );
  }
}
