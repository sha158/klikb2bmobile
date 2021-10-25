import 'package:flutter/material.dart';
import 'package:kgrozer/widgets/bottomnav.dart';
import 'package:kgrozer/widgets/searchbar.dart';

class OrderDetail extends StatefulWidget {
  OrderDetail({Key? key}) : super(key: key);

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            Searchbar(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Order Details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "view other orders",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 200,
                  width: 350,
                  child: Card(
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 15,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("ORDER ID:34DS5"),
                              SizedBox(width:65,),
                              Text("Delivered on jun 12"),
                            ],
                          ),
                          
                        ),
                        Divider(indent: 15,endIndent: 15,color: Colors.black,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Tomato"),
                            SizedBox(width: 60,),
                            Text("2Kg | AED 45")
                          ],
                        ),
                        

                      ],
                      
                      
                    ),
                  ),
                ),
                SizedBox(height: 150,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("1 item"),
                        SizedBox(width: 50,),
                        Text("AED 475")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Discount"),
                        SizedBox(width: 50,),
                        Text("AED 10"),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
