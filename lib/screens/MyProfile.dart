import 'package:flutter/material.dart';
import 'package:kgrozer/screens/My_Orders.dart';
import 'package:kgrozer/screens/Mywishlist.dart';
import 'package:kgrozer/screens/settings.dart';
import 'package:kgrozer/screens/support.dart';
import 'package:kgrozer/widgets/CustomCard.dart';
import 'package:kgrozer/widgets/bottomnav.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  color: Colors.green,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "My Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 50,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Customer Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(textname: "My Orders",cardtap: ()=>Myorders(),),
                    CustomCard(textname: "My Wishlists",cardtap: ()=>Wishlist(),),
                    CustomCard(textname: "Settings",cardtap: ()=>settings(),),
                    CustomCard(textname: "Supports",cardtap: ()=>support(),)
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
