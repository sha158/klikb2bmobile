import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kgrozer/screens/Order_Details.dart';
import 'package:kgrozer/widgets/CustomCard.dart';
import 'package:kgrozer/widgets/MyOrdersCard.dart';
import 'package:kgrozer/widgets/bottomnav.dart';
import 'package:kgrozer/widgets/searchbar.dart';

class Myorders extends StatelessWidget {
  
  final bool isactive ;
  const Myorders({ this.isactive=true});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          body: Column(
            children: [
              Searchbar(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 250),
                child: Text(
                  "My Orders",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              GestureDetector(
                onTap: (){
                  
                },
                child: TabBar(
                  indicatorColor: Colors.green,
                  tabs: [
                    Tab(
                      child:  Text(
                        "Delivered",
                        style: TextStyle(
                            color: isactive == true? Colors.green:Colors.amber ,fontWeight: FontWeight.bold),
                      )
                    ),
                    Tab(
                      child:  Text(
                        "Processing",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Cancelled",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: TabBarView(
                  children: [
                    GestureDetector(
                      onTap: ()=> Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => OrderDetail())),
                      child: OrderCard(
                          orderID: "OrderID : 34DS5",
                          Total: "Total: AED 460",
                          delivered: "Delivered on jun 12,2022"),
                    ),
                    OrderCard(
                        orderID: "OrderID : 34DS5",
                        Total: "Total: AED 460",
                        delivered: "Processing"),
                    OrderCard(
                        orderID: "OrderID : 34DS5",
                        Total: "Total: AED 460",
                        delivered: "cancelled"),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
