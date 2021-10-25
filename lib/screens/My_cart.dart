import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kgrozer/widgets/bottomnav.dart';
import 'package:kgrozer/widgets/generatebutton.dart';
import 'package:kgrozer/widgets/hometext.dart';
import 'package:kgrozer/widgets/searchbar.dart';

class MyCart extends StatefulWidget {
  MyCart({Key? key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int count = 1;
  int incrementcounter(int a) {
    setState(() {
      count += a;
    });
    if (count < 1) {
      count = 0;
    }

    return 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            Searchbar(),
           Container(
             margin: EdgeInsets.symmetric(horizontal: 15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 SizedBox(width: 180),
                 TextButton(onPressed: (){}, child: Text("Add More",style: TextStyle(color: Colors.green,fontSize: 20),))
               ],
             ),
           ),
            Container(
              margin: EdgeInsets.all(8),
              height: 130,
              child: Card(
                semanticContainer: true,
                elevation: 4,
                child: Container(
                  height: 60,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Tomato",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "AED 45",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.green,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.delete_forever_outlined,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        
                          Container(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        side: BorderSide.none),
                    onPressed: () {},
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => incrementcounter(-1),
                          icon: Icon(
                            Icons.remove,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "$count",
                          style: TextStyle(color: Colors.green),
                        ),
                        IconButton(
                          onPressed: () => incrementcounter(1),
                          icon: Icon(
                            Icons.add,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                         
                        ],
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: BottomAppBar(
          color: Colors.white,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("5 items"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Total:AED 460",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 70,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Proceed to pay"),
                style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.green[700],
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
              ),
            )]
          ),
        ),
      ),
    );
  }
}
