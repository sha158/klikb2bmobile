import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  Searchbar({Key? key}) : super(key: key);

  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 50,
        margin: EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.green.shade600,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.white),
              hintText: "Type in your text",
              fillColor: Colors.white),
        ),
      ),
    );
  }
}
