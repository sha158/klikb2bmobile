import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kgrozer/widgets/Productlistcard.dart';
import 'package:kgrozer/widgets/searchbar.dart';

class ProductList extends StatefulWidget {
  final product_list_name;
  ProductList({this.product_list_name});

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: ListView(
          children: [
            Searchbar(),
    
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                widget.product_list_name,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            ProductCardList(),
            ProductCardList(),
            ProductCardList(),
            ProductCardList(),
            ProductCardList(),
            ProductCardList(),
            ProductCardList(),
            ProductCardList(),
            ProductCardList(),
            ProductCardList(),
            
            
          ],
        ),
      ),
    );
  }

  void addQuantity() {
    var quantity = 1;
    quantity = quantity + 1;
  }
}



