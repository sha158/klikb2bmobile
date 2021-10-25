import 'package:flutter/material.dart';

class ProductCardList extends StatefulWidget {
  ProductCardList({Key? key}) : super(key: key);

  @override
  _ProductCardListState createState() => _ProductCardListState();
}

class _ProductCardListState extends State<ProductCardList> {
  bool isFavroite = false;
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
    return Container(
      margin: EdgeInsets.all(8),
      height: 110,
      child: Card(
        semanticContainer: true,
        elevation: 4,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Tomato",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("45257Q  |  1KG  | AED 20"),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isFavroite = !isFavroite;
                      });
                    },
                    icon: isFavroite
                        ? Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
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
                ),
              ],
            )
          ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
