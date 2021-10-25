import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String orderID;
  final String Total;
  final String delivered;
  OrderCard(
      {required this.orderID, required this.Total, required this.delivered});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 120,
      width: 370,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("$orderID"),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "$Total",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 15,
              endIndent: 15,
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "$delivered",
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
