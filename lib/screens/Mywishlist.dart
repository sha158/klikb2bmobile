import 'package:flutter/material.dart';
import 'package:kgrozer/widgets/hometext.dart';
import 'package:kgrozer/widgets/searchbar.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            Searchbar(),
            Row(
              children: [
                Maintext(
                  textname: "My Cart",
                ),
                Expanded(
                  child: Text(
                    "Add More",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(8),
              height: 110,
              child: Card(
                semanticContainer: true,
                elevation: 4,
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
                          width: 50,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.green,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.delete_forever_outlined,
                          color: Colors.red,
                          size: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide.none,
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  "2kg",
                                  style: TextStyle(color: Colors.black),
                                ),
                                Expanded(
                                    child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
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