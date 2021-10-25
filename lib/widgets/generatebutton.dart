import 'package:flutter/material.dart';


class GenerateButton extends StatelessWidget {
  final String text;
  final Function onPressedd;
  GenerateButton({required this.text,required this.onPressedd});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        onPressed:()=> Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) => onPressedd())),
        child: Text(
          "$text",
          style: TextStyle(fontSize: 25.0),
        ),
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.green[700],
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 10.0)),
      ),
    );
  }
}
