import 'package:flutter/material.dart';
import 'package:kgrozer/screens/productlist.dart';

class Products extends StatefulWidget {
  Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'item_name': 'Fruits',
      'item_image':'https://images.pexels.com/photos/4054850/pexels-photo-4054850.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'
    },
    {
      'item_name': 'Vegetables',
      'item_image':'https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'
    },
    {
      'item_name': 'Bakery and Bread',
      'item_image':'https://images.pexels.com/photos/1387070/pexels-photo-1387070.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'
    },
    {
      'item_name': 'Meat and SeaFood',
      'item_image':'https://images.pexels.com/photos/5995508/pexels-photo-5995508.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'
    },
    {
      'item_name': 'Frozen Foods',
      'item_image':'https://images.pexels.com/photos/8920145/pexels-photo-8920145.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'
    },
    {
      'item_name': 'Pasta and Rice',
      'item_image':'https://images.pexels.com/photos/8108116/pexels-photo-8108116.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'
    },
    
    
    

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            item_name: product_list[index]['item_name'],
            item_image: product_list[index]['item_image'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final item_name;
  final item_image;

  SingleProduct({this.item_name, this.item_image});

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
      child: Hero(
        tag: item_name,
        child: Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ProductList(product_list_name: item_name,))),
            child: GridTile(
              child: Image.network(item_image,fit: BoxFit.cover,),
              footer: Container(
                color: Colors.green,
                child: ListTile(
                  title: Text(
                    item_name,
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  textAlign: TextAlign.center,),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
