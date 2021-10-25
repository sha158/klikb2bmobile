

import 'package:flutter/material.dart';
import 'package:kgrozer/models/Home_Products.dart';
import 'package:kgrozer/widgets/MainProducts.dart';
import 'package:kgrozer/widgets/bottomnav.dart';
import 'package:kgrozer/widgets/hometext.dart';
import 'package:kgrozer/widgets/searchbar.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Searchbar(),
          Maintext(
            textname: "Pick your item",
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Products(),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
