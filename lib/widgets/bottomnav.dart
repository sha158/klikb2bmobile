import 'package:flutter/material.dart';
import 'package:kgrozer/screens/MyProfile.dart';
import 'package:kgrozer/screens/My_cart.dart';
import 'package:kgrozer/screens/main_home.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => home(),
            ),
          ),
          icon: Icon(Icons.home),
        ),
        IconButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Profile(),
            ),
          ),
          icon: Icon(Icons.person),
        ),
        IconButton(
          onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Scaffold(backgroundColor: Colors.green[600],bottomNavigationBar: BottomBar(),))),
          icon: Icon(Icons.add),
        ),
        IconButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MyCart(),
            ),
          ),
          icon: Icon(Icons.shopping_bag),
        ),
      ],
    ));
  }
}
