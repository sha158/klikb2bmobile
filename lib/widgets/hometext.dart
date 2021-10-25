import 'package:flutter/material.dart';

class Maintext extends StatelessWidget {
  final textname;
  Maintext({this.textname});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 180, top: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              textname,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
